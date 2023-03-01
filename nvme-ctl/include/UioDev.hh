#ifndef UIODEV_HH_
#define UIODEV_HH_
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <string>
#include <thread>
#include <memory>
#include <cstring>
#include <cinttypes>
#include <dirent.h>
#include <assert.h>
#include <memory>
#include <vector>
#include "util.h"
#include <hw_mmap.h>
#include <mem_util.h>
#include <iostream>

using std::vector;
using std::shared_ptr;
using u64 = uint64_t;

/***************** Macros (Inline Functions) Definitions *********************/
#define MAX_UIO_PATH_SIZE       256
#define MAX_UIO_NAME_SIZE       64
#define MAX_UIO_MAPS            1
#define UIO_INVALID_ADDR        0

/************************** Function Implementation *************************/
static int line_from_file(char* filename, char* linebuf) {
    char* s;
    int i;
    FILE* fp = fopen(filename, "r");
    if (!fp) return -1;
    s = fgets(linebuf, MAX_UIO_NAME_SIZE, fp);
    fclose(fp);
    if (!s) return -2;
    for (i=0; (*s)&&(i<MAX_UIO_NAME_SIZE); i++) {
        if (*s == '\n') *s = 0;
        s++;
    }
    return 0;
}

static int uio_info_read_map_addr(int uio_id, uint64_t *addr) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    *addr = UIO_INVALID_ADDR;
    sprintf(file, "/sys/class/uio/uio%d/maps/map0/addr", uio_id);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%lx", addr);
    fclose(fp);
    if (ret < 0) return -2;
    return 0;
}

static int uio_info_read_map_size(int uio_id, u64 *size) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/maps/map0/size", uio_id);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%lx", size);
    fclose(fp);
    if (ret < 0) return -2;
    return 0;
}

struct UioAttributes {
    int uio_id;
    u64 phy_addr;
    u64 size;
    std::string name;
    bool opened = false;

    UioAttributes(int uio_id, u64 phy_addr, u64 size, std::string name) :
            uio_id(uio_id), phy_addr(phy_addr), size(size), name(std::move(name)) {}
};

static vector<UioAttributes> uio_attrs;

class UioDev {
protected:
    /* attributes */
    int uio_id;
    u64 phy_addr;
    u64 size;
    std::string name;
    bool *opened;

    /* runtime */
    void *addr;
    int fd = -1;

    void load_attributes(UioAttributes &attr)
    {
        uio_id = attr.uio_id;
        phy_addr = attr.phy_addr;
        size = attr.size;
        name = attr.name;
        opened = &attr.opened;
    }

    int check_memdev()
    {
        if (name == "dramdev") {
            return 0;
        }

        return -1;

        if (name == "ddrdev") {
            return 1;
        }

        return -1;
    }

public:
    void * getAddr() {
        return addr;
    }

    bool online() { return fd >= 0; }

    UioDev(const std::string &name) {
//        printf("UioDev(%s) called\n", name.c_str());
        bool found = false;
        for (auto &attr : uio_attrs) {
            // note that several uios may shared the same dev name
//            printf("attr.name=%s, attr.opened=%d\n", attr.name.c_str(), attr.opened);
            if (attr.name == name && !attr.opened) {
                load_attributes(attr);

                int memdev_id = check_memdev();
                printf("%s bound to /dev/uio%d, memdev_id=%d\n",
                       name.c_str(), attr.uio_id, memdev_id);

                std::string devpath;

                devpath = memdev_id < 0
                        ? "/dev/uio" + std::to_string(attr.uio_id)
                        : "/proc/phys-mmap-helper";

                fd = ::open(devpath.c_str(), O_RDWR);
                if (fd < 0) {
                    fprintf(stderr, "dev: %s\n", devpath.c_str());
                    handle_error("open");
                }

                addr = ::mmap(NULL, size, PROT_READ | PROT_WRITE,
                              MAP_SHARED, fd, memdev_id < 0 ? 0 : memdev_id * getpagesize());
                if (addr == MAP_FAILED) {
                    handle_error("mmap");
                }

                attr.opened = true;
                found = true;
                break;
            }
        }
        if (!found) {
            std::cerr << "not found! " << name << std::endl;
            handle_error("not found");
        }
    }

    virtual ~UioDev()
    {
        if (fd >= 0) {
            ::close(fd);
            ::munmap(addr, size);
            *opened = false;
        }
    }

    static int uio_selector(const struct dirent *name)
    {
        return strncmp(name->d_name, "uio", 3) == 0;
    }

    static int uio_cmp(const struct dirent **e1, const struct dirent **e2)
    {
        int id_1 = atoi((*e1)->d_name + 3);
        int id_2 = atoi((*e2)->d_name + 3);
        return id_1 - id_2;
    }

    static int scan_all()
    {
        struct dirent **namelist;
        int nr_uios = scandir("/sys/class/uio", &namelist, uio_selector, uio_cmp);
        char file[ MAX_UIO_PATH_SIZE ];
        char name[ MAX_UIO_NAME_SIZE ];

        for (int i = 0; i < nr_uios; i++) {
            int uio_id;
            uint64_t addr, size;

            strcpy(file, "/sys/class/uio/");
            strcat(file, namelist[i]->d_name);
            strcat(file, "/name");
            uio_id = atoi(namelist[i]->d_name + 3);
            line_from_file(file, name);
            uio_info_read_map_addr(uio_id, &addr);
            uio_info_read_map_size(uio_id, &size);

            uio_attrs.emplace_back(uio_id, addr, size, name);
        }

        return nr_uios;
    }

    static void print_all()
    {
        int nr_devs = uio_attrs.size();
        printf("# uio devs: %d\n", nr_devs);
        printf("uio_id  %18s  %18s  %18s  opened\n",
               "addr", "size", "name");
        for (int i = 0; i < nr_devs; i++) {
            const auto &attr = uio_attrs[i];
            printf("%6d  0x%016lx  0x%016lx  %18s  %d\n", attr.uio_id, attr.phy_addr, attr.size,
                   attr.name.c_str(), attr.opened);
        }
    }
};

class CtxDev : public UioDev
{
    void *addr1;
public:
    CtxDev() : UioDev("ctx")
    {
        addr1 = ::mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, getpagesize());
        if (addr1 == MAP_FAILED) {
            handle_error("mmap ctx reg");
        }
    }

    void *getAddr1()
    {
        return addr1;
    }

    ~CtxDev()
    {
        ::munmap(addr1, size);
    }
};
#endif

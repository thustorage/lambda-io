#include <iostream>
#include <cassert>
#include <random>
#include <vector>

#include <fcntl.h>
#include <unistd.h>

#define SZ_8M (8l << 20)
#define SZ_1G (1l << 30)
#define SZ_16G (16l << 30)

#define SZ_FILE SZ_16G
#define SZ_SHUFFLE_UNIT SZ_1G
#define SZ_UNIT SZ_8M

int main(int argc, char *argv[])
{
    if (argc != 3) {
        fprintf(stderr, "%s <file path> <mode 0:seq, 1: rand>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int fd = open(argv[1], O_RDONLY);
    assert(fd > 0);

    char *buf = new char[SZ_UNIT];

    switch (atoi(argv[2])) {
        case 0: {
            for (size_t off = 0; off < SZ_FILE; off += SZ_UNIT) {
                int ret = pread(fd, buf, SZ_UNIT, off);
                assert(ret == SZ_UNIT);
            }
            break;
        }
        case 1: {
            size_t nr_shuffle_units = SZ_FILE / SZ_SHUFFLE_UNIT;
            std::vector<size_t> vec(nr_shuffle_units);
            std::iota(vec.begin(), vec.end(), 0);

            std::random_device rd;
            std::mt19937 g(rd());
            std::shuffle(vec.begin(), vec.end(), g);

            // generated.
            // vec = {0, 6, 4, 3, 1, 14, 5, 15, 2, 9, 12, 11, 13, 10, 8, 7};

            for (auto i : vec) {
                std::cout << i << " ";
                for (size_t off = 0; off < SZ_SHUFFLE_UNIT; off += SZ_UNIT) {
                    int ret = pread(fd, buf, SZ_UNIT, off + i * SZ_SHUFFLE_UNIT);
                    assert(ret == SZ_UNIT);
                }
            }
            std::cout << std::endl;

            break;
        }
        default:
            std::cerr << "unknown mode(argv[2])" << std::endl;
            exit(EXIT_FAILURE);
    }

    delete[] buf;
    close(fd);
    return 0;
}

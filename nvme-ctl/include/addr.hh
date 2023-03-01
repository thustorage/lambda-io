#ifndef _ADDR_H_
#define _ADDR_H_
#include <debug.h>

class hybrid_addr_t {
public:
    uint64_t phys;
    void *virt;

    hybrid_addr_t(uint64_t phys = 0, void *virt = nullptr) : phys(phys), virt(virt) {}

    hybrid_addr_t operator + (int offset) {
        hybrid_addr_t res = *this;
        res.phys += offset;
        res.virt = (char *)res.virt + offset;
        return res;
    }
};

struct addr_seg_t {
    uint64_t addr;
    uint32_t size;
    uint32_t flag;
};

class addr_list_t {
public:
    enum {
        SCALAR,
        ARRAY,
        SEGMENTS,
    } mode;

    union {
        uint64_t saddr;
        uint64_t *array;
    };

    uint64_t offset; // add this offset to all addresses

public:
    explicit addr_list_t(uint64_t saddr, uint64_t offset = 0)
        : mode(SCALAR), saddr(saddr), offset(offset) {}

    explicit addr_list_t(uint64_t *array, uint64_t offset = 0)
        : mode(ARRAY), array(array), offset(offset) {}

    uint64_t operator[](int idx) {
        switch (mode) {
            case SCALAR:
                return saddr + (((uint64_t)idx) << 12) + offset;
            case ARRAY:
                return array[idx] + offset;
            case SEGMENTS:
            default:
                __builtin_unreachable();
        }
    }
};

#endif
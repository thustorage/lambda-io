#ifndef _UEBPF_BITOPS_H_
#define _UEBPF_BITOPS_H_
#include <types.h>
#include <compiler.h>


#define BITS_PER_BYTE 8
#define BITS_PER_LONG 64 // (sizeof(long) * BITS_PER_BYTE)
#define BITS_PER_TYPE(type)	(sizeof(type) * BITS_PER_BYTE)
#define BITS_TO_LONGS(nr)	div_up(nr, BITS_PER_TYPE(long))
#define BIT(nr)			(1ul << (nr))
#define DECLARE_BITMAP(name,bits) \
	unsigned long name[BITS_TO_LONGS(bits)]
#define BITMAP_FIRST_WORD_MASK(start) (~0UL << ((start) & (BITS_PER_LONG - 1)))

#define find_first_bit(addr, size) find_next_bit((addr), (size), 0)

#define for_each_set_bit(bit, addr, size) \
	for ((bit) = find_first_bit((addr), (size));		\
	     (bit) < (size);					\
	     (bit) = find_next_bit((addr), (size), (bit) + 1))

#define UL(x) x ## UL
#define __GENMASK(h, l) \
	(((~UL(0)) - (UL(1) << (l)) + 1) & \
	 (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
#define GENMASK(h, l) \
	(__GENMASK(h, l))

/**
 * __ffs - find first bit in word.
 * @word: The word to search
 *
 * Undefined if no bit exists, so code should check against 0 first.
 */
static __always_inline unsigned long __ffs(unsigned long word)
{
    return __builtin_ctzl(word);
}


/**
 * bitmap_from_u64 - Check and swap words within u64.
 *  @mask: source bitmap
 *  @dst:  destination bitmap
 *
 * In 32-bit Big Endian kernel, when using ``(u32 *)(&val)[*]``
 * to read u64 mask, we will get the wrong word.
 * That is ``(u32 *)(&val)[0]`` gets the upper 32 bits,
 * but we expect the lower 32-bits of u64.
 */
static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
{
	dst[0] = mask & ULONG_MAX;

	if (sizeof(mask) > sizeof(unsigned long))
		dst[1] = mask >> 32;
}    

/*
 * This is a common helper function for find_next_bit, find_next_zero_bit, and
 * find_next_and_bit. The differences are:
 *  - The "invert" argument, which is XORed with each fetched word before
 *    searching it for one bits.
 *  - The optional "addr2", which is anded with "addr1" if present.
 */
static inline unsigned long _find_next_bit(const unsigned long *addr1,
		const unsigned long *addr2, unsigned long nbits,
		unsigned long start, unsigned long invert)
{
	unsigned long tmp;

	if (unlikely(start >= nbits))
		return nbits;

	tmp = addr1[start / BITS_PER_LONG];
	if (addr2)
		tmp &= addr2[start / BITS_PER_LONG];
	tmp ^= invert;

	/* Handle 1st word. */
	tmp &= BITMAP_FIRST_WORD_MASK(start);
	start = round_down(start, BITS_PER_LONG);

	while (!tmp) {
		start += BITS_PER_LONG;
		if (start >= nbits)
			return nbits;

		tmp = addr1[start / BITS_PER_LONG];
		if (addr2)
			tmp &= addr2[start / BITS_PER_LONG];
		tmp ^= invert;
	}

	return min(start + __ffs(tmp), nbits);
}

/*
 * Find the next set bit in a memory region.
 */
static unsigned long find_next_bit(const unsigned long *addr, unsigned long size,
			    unsigned long offset)
{
	return _find_next_bit(addr, NULL, size, offset, 0UL);
}

/**
 * fls - find last (most-significant) bit set
 * @x: the word to search
 *
 * This is defined the same way as ffs.
 * Note fls(0) = 0, fls(1) = 1, fls(0x80000000) = 32.
 */
static __always_inline int fls(unsigned int x)
{
    return x ? sizeof(x) * 8 - __builtin_clz(x) : 0;
}

#define BITS_PER_U64 (sizeof(__u64) * 8)
static __always_inline int fls64(__u64 x)
{
    int num = BITS_PER_U64 - 1;

    if (x == 0)
        return 0;

    if (!(x & (~0ull << (BITS_PER_U64-32)))) {
        num -= 32;
        x <<= 32;
    }
    if (!(x & (~0ull << (BITS_PER_U64-16)))) {
        num -= 16;
        x <<= 16;
    }
    if (!(x & (~0ull << (BITS_PER_U64-8)))) {
        num -= 8;
        x <<= 8;
    }
    if (!(x & (~0ull << (BITS_PER_U64-4)))) {
        num -= 4;
        x <<= 4;
    }
    if (!(x & (~0ull << (BITS_PER_U64-2)))) {
        num -= 2;
        x <<= 2;
    }
    if (!(x & (~0ull << (BITS_PER_U64-1))))
        num -= 1;

    return num + 1;
}

/**
 * __ffs64 - find first set bit in a 64 bit word
 * @word: The 64 bit word
 *
 * On 64 bit arches this is a synomyn for __ffs
 * The result is not defined if no bits are set, so check that @word
 * is non-zero before calling this.
 */
static inline unsigned long __ffs64(u64 word)
{
#if BITS_PER_LONG == 32
    if (((u32)word) == 0UL)
		return __ffs((u32)(word >> 32)) + 32;
#elif BITS_PER_LONG != 64
#error BITS_PER_LONG not 32 or 64
#endif
    return __ffs((unsigned long)word);
}

static inline unsigned int __sw_hweight32(unsigned int w)
{
#if 1//def CONFIG_ARCH_HAS_FAST_MULTIPLIER
    w -= (w >> 1) & 0x55555555;
	w =  (w & 0x33333333) + ((w >> 2) & 0x33333333);
	w =  (w + (w >> 4)) & 0x0f0f0f0f;
	return (w * 0x01010101) >> 24;
#else
    unsigned int res = w - ((w >> 1) & 0x55555555);
    res = (res & 0x33333333) + ((res >> 2) & 0x33333333);
    res = (res + (res >> 4)) & 0x0F0F0F0F;
    res = res + (res >> 8);
    return (res + (res >> 16)) & 0x000000FF;
#endif
}

static inline unsigned long hweight64(__u64 w)
{
#if BITS_PER_LONG == 32
    return __sw_hweight32((unsigned int)(w >> 32)) +
	       __sw_hweight32((unsigned int)w);
#elif BITS_PER_LONG == 64
    #if 1//def CONFIG_ARCH_HAS_FAST_MULTIPLIER
	w -= (w >> 1) & 0x5555555555555555ul;
	w =  (w & 0x3333333333333333ul) + ((w >> 2) & 0x3333333333333333ul);
	w =  (w + (w >> 4)) & 0x0f0f0f0f0f0f0f0ful;
	return (w * 0x0101010101010101ul) >> 56;
#else
	__u64 res = w - ((w >> 1) & 0x5555555555555555ul);
	res = (res & 0x3333333333333333ul) + ((res >> 2) & 0x3333333333333333ul);
	res = (res + (res >> 4)) & 0x0F0F0F0F0F0F0F0Ful;
	res = res + (res >> 8);
	res = res + (res >> 16);
	return (res + (res >> 32)) & 0x00000000000000FFul;
#endif
#endif
}

#endif

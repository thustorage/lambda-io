/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for 鈥渁cademic research鈥� and 鈥渘on-commercial鈥�
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */

#ifndef __BASIC_H__
#define __BASIC_H__
#include <stdint.h>

typedef int8_t				INT8;
typedef int16_t			INT16;
typedef int32_t				INT32;
typedef int64_t		INT64;

typedef uint8_t			UINT8;
typedef uint16_t			UINT16;
typedef uint32_t			UINT32;
typedef uint64_t		UINT64;

typedef unsigned char			BOOL8;
typedef unsigned short			BOOL16;
typedef unsigned int			BOOL32;

typedef union _UINT64_T
{
	UINT64  ddw;
	UINT32  dw[2];
	struct
	{
		UINT32  low;
		UINT32  high;
	};
} UINT64_T;

#define OK						(1)
#define FAIL					(0)

#ifndef TRUE
#define TRUE					(1)
#define FALSE					(0)
#endif

#ifdef NULL
#undef NULL
#endif

#define NULL					(0)

#define SZ_1M (1ul << 20)
#define SZ_2M (2ul << 20)
#define SZ_4M (4ul << 20)
#define SZ_8M (8ul << 20)
#define SZ_16M (16ul << 20)
#define SZ_4K (4ul << 10)
#define SZ_8K (8ul << 10)
#define SZ_16K (16ul << 10)
#define SZ_1G (1ul << 30)
#define SZ_16G (16ul << 30)

#define INVALID8				((unsigned char) 0xFF)
#define INVALID16				((unsigned short) 0xFFFF)
#define INVALID32				((unsigned int) 0xFFFFFFFFUL)
#define INVALID64				((unsigned long long) 0xFFFFFFFFFFFFFFFFULL)


#define BIT0					((0x1UL) << 0)
#define BIT1					((0x1UL) << 1)
#define BIT2					((0x1UL) << 2)
#define BIT3					((0x1UL) << 3)
#define BIT4					((0x1UL) << 4)
#define BIT5					((0x1UL) << 5)
#define BIT6					((0x1UL) << 6)
#define BIT7					((0x1UL) << 7)
#define BIT8					((0x1UL) << 8)
#define BIT9					((0x1UL) << 9)
#define BIT10					((0x1UL) << 10)
#define BIT11					((0x1UL) << 11)
#define BIT12					((0x1UL) << 12)
#define BIT13					((0x1UL) << 13)
#define BIT14					((0x1UL) << 14)
#define BIT15					((0x1UL) << 15)
#define BIT16					((0x1UL) << 16)
#define BIT17					((0x1UL) << 17)
#define BIT18					((0x1UL) << 18)
#define BIT19					((0x1UL) << 19)
#define BIT20					((0x1UL) << 20)
#define BIT21					((0x1UL) << 21)
#define BIT22					((0x1UL) << 22)
#define BIT23					((0x1UL) << 23)
#define BIT24					((0x1UL) << 24)
#define BIT25					((0x1UL) << 25)
#define BIT26					((0x1UL) << 26)
#define BIT27					((0x1UL) << 27)
#define BIT28					((0x1UL) << 28)
#define BIT29					((0x1UL) << 29)
#define BIT30					((0x1UL) << 30)
#define BIT31					((0x1UL) << 31)

#define BIT(x)					((0x1UL) << (x))

#define LOG2(x)					(((x) > BIT(0)) +		\
								((x) > BIT(1)) +		\
								((x) > BIT(2)) +		\
								((x) > BIT(3)) +		\
								((x) > BIT(4)) +		\
								((x) > BIT(5)) +		\
								((x) > BIT(6)) +		\
								((x) > BIT(7)) +		\
								((x) > BIT(8)) +		\
								((x) > BIT(9)) +		\
								((x) > BIT(10)) +		\
								((x) > BIT(11)) +		\
								((x) > BIT(12)) +		\
								((x) > BIT(13)) +		\
								((x) > BIT(14)) +		\
								((x) > BIT(15)) +		\
								((x) > BIT(16)) +		\
								((x) > BIT(17)) +		\
								((x) > BIT(18)) +		\
								((x) > BIT(19)) +		\
								((x) > BIT(20)) +		\
								((x) > BIT(21)) +		\
								((x) > BIT(22)) +		\
								((x) > BIT(23)) +		\
								((x) > BIT(24)) +		\
								((x) > BIT(25)) +		\
								((x) > BIT(26)) +		\
								((x) > BIT(27)) +		\
								((x) > BIT(28)) +		\
								((x) > BIT(29)) +		\
								((x) > BIT(30)) +		\
								((x) > BIT(31)))

#define COUNT_BITS(x)			((((x) & BIT(0)) != 0) +		\
								(((x) & BIT(1)) != 0) +			\
								(((x) & BIT(2)) != 0) +			\
								(((x) & BIT(3)) != 0) +			\
								(((x) & BIT(4)) != 0) +			\
								(((x) & BIT(5)) != 0) +			\
								(((x) & BIT(6)) != 0) +			\
								(((x) & BIT(7)) != 0) +			\
								(((x) & BIT(8)) != 0) +			\
								(((x) & BIT(9)) != 0) +			\
								(((x) & BIT(10)) != 0) +		\
								(((x) & BIT(11)) != 0) +		\
								(((x) & BIT(12)) != 0) +		\
								(((x) & BIT(13)) != 0) +		\
								(((x) & BIT(14)) != 0) +		\
								(((x) & BIT(15)) != 0) +		\
								(((x) & BIT(16)) != 0) +		\
								(((x) & BIT(17)) != 0) +		\
								(((x) & BIT(18)) != 0) +		\
								(((x) & BIT(19)) != 0) +		\
								(((x) & BIT(20)) != 0) +		\
								(((x) & BIT(21)) != 0) +		\
								(((x) & BIT(22)) != 0) +		\
								(((x) & BIT(23)) != 0) +		\
								(((x) & BIT(24)) != 0) +		\
								(((x) & BIT(25)) != 0) +		\
								(((x) & BIT(26)) != 0) +		\
								(((x) & BIT(27)) != 0) +		\
								(((x) & BIT(28)) != 0) +		\
								(((x) & BIT(29)) != 0) +		\
								(((x) & BIT(30)) != 0) +		\
								(((x) & BIT(31)) != 0))



#define DIV_CEIL(x, y)			(((x) + ((y) - 1)) / (y))		// ((((x) % (y)) != 0) ? (((x) / (y)) + 1) : ((x) / (y)))

#define ALIGN_CEIL(x, y)		(DIV_CEIL(x, y) * (y))			// ((((x) + ((y) - 1)) / (y)) * (y))
#define ALIGN_FLOOR(x, y)		(((x) / (y)) * (y))

#define MIN(x, y)				(((x) < (y)) ? (x) : (y))
#define MAX(x, y)				(((x) > (y)) ? (x) : (y))

#define MIN3(x, y, z)			(MIN(x, MIN(y, z)))
#define MAX3(x, y, z)			(MAX(x, MAX(y, z)))


#define div_up(x, y) (((x) + (y) - 1) / (y))
#define div_down(x, y) ((x) / (y))
#define round_up(x, y) (div_up(x, y) * (y))
#define round_down(x, y) (div_down(x, y) * (y))

#endif	// __BASIC_H__

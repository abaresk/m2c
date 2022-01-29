.include "macros.inc"

.section .text  # 0x0 - 0xac

.global test
test:
/* 00000000 00000000  2C 03 00 05 */	cmpwi r3, 5
/* 00000004 00000004  40 80 00 10 */	bge .L00000014
/* 00000008 00000008  2C 03 00 01 */	cmpwi r3, 1
/* 0000000C 0000000C  40 80 00 14 */	bge .L00000020
/* 00000010 00000010  48 00 00 44 */	b .L00000054
.L00000014:
/* 00000014 00000014  2C 03 00 07 */	cmpwi r3, 7
/* 00000018 00000018  40 80 00 3C */	bge .L00000054
/* 0000001C 0000001C  48 00 00 1C */	b .L00000038
.L00000020:
/* 00000020 00000020  38 00 00 01 */	li r0, 1
/* 00000024 00000024  90 00 00 00 */	stw r0, glob@l(r0)
/* 00000028 00000028  40 82 00 2C */	bne .L00000054
/* 0000002C 0000002C  38 00 00 02 */	li r0, 2
/* 00000030 00000030  90 00 00 00 */	stw r0, glob@l(r0)
/* 00000034 00000034  48 00 00 20 */	b .L00000054
.L00000038:
/* 00000038 00000038  2C 03 00 01 */	cmpwi r3, 1
/* 0000003C 0000003C  40 82 00 10 */	bne .L0000004C
/* 00000040 00000040  38 00 00 01 */	li r0, 1
/* 00000044 00000044  90 00 00 00 */	stw r0, glob@l(r0)
/* 00000048 00000048  48 00 00 0C */	b .L00000054
.L0000004C:
/* 0000004C 0000004C  38 00 00 02 */	li r0, 2
/* 00000050 00000050  90 00 00 00 */	stw r0, glob@l(r0)
.L00000054:
/* 00000054 00000054  2C 03 00 05 */	cmpwi r3, 5
/* 00000058 00000058  40 80 00 10 */	bge .L00000068
/* 0000005C 0000005C  2C 03 00 01 */	cmpwi r3, 1
/* 00000060 00000060  40 80 00 14 */	bge .L00000074
/* 00000064 00000064  4E 80 00 20 */	blr 
.L00000068:
/* 00000068 00000068  2C 03 00 07 */	cmpwi r3, 7
/* 0000006C 0000006C  4C 80 00 20 */	bgelr 
/* 00000070 00000070  48 00 00 1C */	b .L0000008C
.L00000074:
/* 00000074 00000074  38 00 00 01 */	li r0, 1
/* 00000078 00000078  90 00 00 00 */	stw r0, glob@l(r0)
/* 0000007C 0000007C  4C 82 00 20 */	bnelr 
/* 00000080 00000080  38 00 00 02 */	li r0, 2
/* 00000084 00000084  90 00 00 00 */	stw r0, glob@l(r0)
/* 00000088 00000088  4E 80 00 20 */	blr 
.L0000008C:
/* 0000008C 0000008C  2C 03 00 01 */	cmpwi r3, 1
/* 00000090 00000090  40 82 00 10 */	bne .L000000A0
/* 00000094 00000094  38 00 00 01 */	li r0, 1
/* 00000098 00000098  90 00 00 00 */	stw r0, glob@l(r0)
/* 0000009C 0000009C  4E 80 00 20 */	blr 
.L000000A0:
/* 000000A0 000000A0  38 00 00 02 */	li r0, 2
/* 000000A4 000000A4  90 00 00 00 */	stw r0, glob@l(r0)
/* 000000A8 000000A8  4E 80 00 20 */	blr 

.section .sbss  # 0x0 - 0x4

.global glob
glob:
	.word 0x00000000


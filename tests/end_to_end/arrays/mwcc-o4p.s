.include "macros.inc"

.section .text  # 0x0 - 0x58

.global test
test:
/* 00000000 00000000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000004 00000004  54 6A 10 3A */	slwi r10, r3, 2
/* 00000008 00000008  54 68 08 3C */	slwi r8, r3, 1
/* 0000000C 0000000C  80 C0 00 00 */	lwz r6, $$21@l(r0)
/* 00000010 00000010  3C E0 00 00 */	lis r7, globalArray@ha
/* 00000014 00000014  7D 25 52 14 */	add r9, r5, r10
/* 00000018 00000018  A0 00 00 00 */	lhz r0, $$21@l(r0)
/* 0000001C 0000001C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 00000020 00000020  38 C1 00 14 */	addi r6, r1, 0x14
/* 00000024 00000024  B0 01 00 18 */	sth r0, 0x18(r1)
/* 00000028 00000028  38 A7 00 00 */	addi r5, r7, globalArray@l
/* 0000002C 0000002C  38 21 00 20 */	addi r1, r1, 0x20
/* 00000030 00000030  7C 66 18 AE */	lbzx r3, r6, r3
/* 00000034 00000034  7C 04 50 2E */	lwzx r0, r4, r10
/* 00000038 00000038  7C 85 42 14 */	add r4, r5, r8
/* 0000003C 0000003C  7C 63 07 74 */	extsb r3, r3
/* 00000040 00000040  A8 84 00 00 */	lha r4, 0(r4)
/* 00000044 00000044  7C 03 01 D6 */	mullw r0, r3, r0
/* 00000048 00000048  80 69 00 04 */	lwz r3, 4(r9)
/* 0000004C 0000004C  7C 60 1A 14 */	add r3, r0, r3
/* 00000050 00000050  7C 64 1A 14 */	add r3, r4, r3
/* 00000054 00000054  4E 80 00 20 */	blr 

.section .bss  # 0x0 - 0xa

.global globalArray
globalArray:
	.word 0x00000000
	.word 0x00000000
	.bytes 0x0, 0x0

.section .sdata2  # 0x0 - 0x6

.global $$21
$$21:
	.word 0x68656c6c
	.bytes 0x6f, 0x0


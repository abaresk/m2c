.include "macros.inc"

.section .text  # 0x0 - 0x70

.global test
test:
/* 00000000 00000000  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000004 00000004  FC 80 08 1E */	fctiwz f4, f1
/* 00000008 00000008  38 04 00 03 */	addi r0, r4, 3
/* 0000000C 0000000C  C8 00 00 00 */	lfd f0, $$22@l(r0)
/* 00000010 00000010  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00000014 00000014  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00000018 00000018  FC A2 00 2A */	fadd f5, f2, f0
/* 0000001C 0000001C  3C 00 43 30 */	lis r0, 0x4330
/* 00000020 00000020  90 61 00 24 */	stw r3, 0x24(r1)
/* 00000024 00000024  C8 00 00 00 */	lfd f0, $$23@l(r0)
/* 00000028 00000028  FC A0 28 18 */	frsp f5, f5
/* 0000002C 0000002C  90 01 00 20 */	stw r0, 0x20(r1)
/* 00000030 00000030  C8 20 00 00 */	lfd f1, $$28@l(r0)
/* 00000034 00000034  FC A5 00 2A */	fadd f5, f5, f0
/* 00000038 00000038  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000003C 0000003C  C8 60 00 00 */	lfd f3, $$26@l(r0)
/* 00000040 00000040  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000044 00000044  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 00000048 00000048  D8 81 00 28 */	stfd f4, 0x28(r1)
/* 0000004C 0000004C  FC A0 28 18 */	frsp f5, f5
/* 00000050 00000050  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000054 00000054  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 00000058 00000058  EC 42 18 28 */	fsubs f2, f2, f3
/* 0000005C 0000005C  38 21 00 30 */	addi r1, r1, 0x30
/* 00000060 00000060  EC 20 28 2A */	fadds f1, f0, f5
/* 00000064 00000064  90 00 00 00 */	stw r0, globali@l(r0)
/* 00000068 00000068  D0 40 00 00 */	stfs f2, globalf@l(r0)
/* 0000006C 0000006C  4E 80 00 20 */	blr 

.section .sbss  # 0x0 - 0x8

.global globalf
globalf:
	.word 0x00000000

.global globali
globali:
	.word 0x00000000

.section .sdata2  # 0x0 - 0x20

.global $$22
$$22:
	.word 0x40140000
	.word 0x00000000

.global $$23
$$23:
	.word 0x40153333
	.word 0x33333333

.global $$26
$$26:
	.word 0x43300000
	.word 0x80000000

.global $$28
$$28:
	.word 0x43300000
	.word 0x00000000

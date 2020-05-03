.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test
/* 000090 00400090 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 000094 00400094 18A00015 */  blez  $a1, .L004000EC
/* 000098 00400098 00001025 */   move  $v0, $zero
/* 00009C 0040009C 30A80003 */  andi  $t0, $a1, 3
/* 0000A0 004000A0 11000009 */  beqz  $t0, .L004000C8
/* 0000A4 004000A4 01003825 */   move  $a3, $t0
/* 0000A8 004000A8 00801821 */  move  $v1, $a0
/* 0000AC 004000AC 24060001 */  addiu $a2, $zero, 1
.L004000B0:
/* 0000B0 004000B0 00C01025 */  move  $v0, $a2
/* 0000B4 004000B4 A0600000 */  sb    $zero, ($v1)
/* 0000B8 004000B8 24630001 */  addiu $v1, $v1, 1
/* 0000BC 004000BC 14E6FFFC */  bne   $a3, $a2, .L004000B0
/* 0000C0 004000C0 24C60001 */   addiu $a2, $a2, 1
/* 0000C4 004000C4 10450008 */  beq   $v0, $a1, .L004000E8
.L004000C8:
/* 0000C8 004000C8 00821821 */   addu  $v1, $a0, $v0
.L004000CC:
/* 0000CC 004000CC 24420004 */  addiu $v0, $v0, 4
/* 0000D0 004000D0 A0600001 */  sb    $zero, 1($v1)
/* 0000D4 004000D4 A0600002 */  sb    $zero, 2($v1)
/* 0000D8 004000D8 A0600003 */  sb    $zero, 3($v1)
/* 0000DC 004000DC 24630004 */  addiu $v1, $v1, 4
/* 0000E0 004000E0 1445FFFA */  bne   $v0, $a1, .L004000CC
/* 0000E4 004000E4 A060FFFC */   sb    $zero, -4($v1)
.L004000E8:
/* 0000E8 004000E8 00001025 */  move  $v0, $zero
.L004000EC:
/* 0000EC 004000EC 18A0000C */  blez  $a1, .L00400120
/* 0000F0 004000F0 28A10002 */   slti  $at, $a1, 2
/* 0000F4 004000F4 30A80003 */  andi  $t0, $a1, 3
/* 0000F8 004000F8 11000006 */  beqz  $t0, .L00400114
/* 0000FC 004000FC 01001825 */   move  $v1, $t0
/* 000100 00400100 24460001 */  addiu $a2, $v0, 1
.L00400104:
/* 000104 00400104 00C01025 */  move  $v0, $a2
/* 000108 00400108 1466FFFE */  bne   $v1, $a2, .L00400104
/* 00010C 0040010C 24C60001 */   addiu $a2, $a2, 1
/* 000110 00400110 10450003 */  beq   $v0, $a1, .L00400120
.L00400114:
/* 000114 00400114 24420004 */   addiu $v0, $v0, 4
.L00400118:
/* 000118 00400118 5445FFFF */  bnel  $v0, $a1, .L00400118
/* 00011C 0040011C 24420004 */   addiu $v0, $v0, 4
.L00400120:
/* 000120 00400120 24030001 */  addiu $v1, $zero, 1
/* 000124 00400124 14200023 */  bnez  $at, .L004001B4
/* 000128 00400128 24020001 */   addiu $v0, $zero, 1
/* 00012C 0040012C 24A7FFFF */  addiu $a3, $a1, -1
/* 000130 00400130 30EE0003 */  andi  $t6, $a3, 3
/* 000134 00400134 11C00008 */  beqz  $t6, .L00400158
/* 000138 00400138 25C40001 */   addiu $a0, $t6, 1
/* 00013C 0040013C 24460001 */  addiu $a2, $v0, 1
.L00400140:
/* 000140 00400140 00620019 */  multu $v1, $v0
/* 000144 00400144 00C01025 */  move  $v0, $a2
/* 000148 00400148 00001812 */  mflo  $v1
/* 00014C 0040014C 1486FFFC */  bne   $a0, $a2, .L00400140
/* 000150 00400150 24C60001 */   addiu $a2, $a2, 1
/* 000154 00400154 10450017 */  beq   $v0, $a1, .L004001B4
.L00400158:
/* 000158 00400158 24460001 */   addiu $a2, $v0, 1
/* 00015C 0040015C 24440002 */  addiu $a0, $v0, 2
/* 000160 00400160 24470003 */  addiu $a3, $v0, 3
.L00400164:
/* 000164 00400164 00620019 */  multu $v1, $v0
/* 000168 00400168 24420004 */  addiu $v0, $v0, 4
/* 00016C 0040016C 00001812 */  mflo  $v1
/* 000170 00400170 00000000 */  nop
/* 000174 00400174 00000000 */  nop
/* 000178 00400178 00660019 */  multu $v1, $a2
/* 00017C 0040017C 24C60004 */  addiu $a2, $a2, 4
/* 000180 00400180 00001812 */  mflo  $v1
/* 000184 00400184 00000000 */  nop
/* 000188 00400188 00000000 */  nop
/* 00018C 0040018C 00640019 */  multu $v1, $a0
/* 000190 00400190 24840004 */  addiu $a0, $a0, 4
/* 000194 00400194 00001812 */  mflo  $v1
/* 000198 00400198 00000000 */  nop
/* 00019C 0040019C 00000000 */  nop
/* 0001A0 004001A0 00670019 */  multu $v1, $a3
/* 0001A4 004001A4 24E70004 */  addiu $a3, $a3, 4
/* 0001A8 004001A8 00001812 */  mflo  $v1
/* 0001AC 004001AC 1445FFED */  bne   $v0, $a1, .L00400164
/* 0001B0 004001B0 00000000 */   nop
.L004001B4:
/* 0001B4 004001B4 18A00027 */  blez  $a1, .L00400254
/* 0001B8 004001B8 00001025 */   move  $v0, $zero
/* 0001BC 004001BC 30A80003 */  andi  $t0, $a1, 3
/* 0001C0 004001C0 1100000B */  beqz  $t0, .L004001F0
/* 0001C4 004001C4 01002025 */   move  $a0, $t0
/* 0001C8 004001C8 24060001 */  addiu $a2, $zero, 1
/* 0001CC 004001CC 8FA30000 */  lw    $v1, ($sp)
.L004001D0:
/* 0001D0 004001D0 00621821 */  addu  $v1, $v1, $v0
/* 0001D4 004001D4 00620019 */  multu $v1, $v0
/* 0001D8 004001D8 00C01025 */  move  $v0, $a2
/* 0001DC 004001DC 00001812 */  mflo  $v1
/* 0001E0 004001E0 1486FFFB */  bne   $a0, $a2, .L004001D0
/* 0001E4 004001E4 24C60001 */   addiu $a2, $a2, 1
/* 0001E8 004001E8 1045001A */  beq   $v0, $a1, .L00400254
/* 0001EC 004001EC AFA30000 */   sw    $v1, ($sp)
.L004001F0:
/* 0001F0 004001F0 8FA30000 */  lw    $v1, ($sp)
/* 0001F4 004001F4 24460001 */  addiu $a2, $v0, 1
/* 0001F8 004001F8 24440002 */  addiu $a0, $v0, 2
/* 0001FC 004001FC 24470003 */  addiu $a3, $v0, 3
/* 000200 00400200 00621821 */  addu  $v1, $v1, $v0
.L00400204:
/* 000204 00400204 00620019 */  multu $v1, $v0
/* 000208 00400208 00001812 */  mflo  $v1
/* 00020C 0040020C 00621821 */  addu  $v1, $v1, $v0
/* 000210 00400210 24630001 */  addiu $v1, $v1, 1
/* 000214 00400214 00660019 */  multu $v1, $a2
/* 000218 00400218 24C60004 */  addiu $a2, $a2, 4
/* 00021C 0040021C 00001812 */  mflo  $v1
/* 000220 00400220 00621821 */  addu  $v1, $v1, $v0
/* 000224 00400224 24630002 */  addiu $v1, $v1, 2
/* 000228 00400228 00640019 */  multu $v1, $a0
/* 00022C 0040022C 24840004 */  addiu $a0, $a0, 4
/* 000230 00400230 00001812 */  mflo  $v1
/* 000234 00400234 00621821 */  addu  $v1, $v1, $v0
/* 000238 00400238 24630003 */  addiu $v1, $v1, 3
/* 00023C 0040023C 00670019 */  multu $v1, $a3
/* 000240 00400240 24420004 */  addiu $v0, $v0, 4
/* 000244 00400244 24E70004 */  addiu $a3, $a3, 4
/* 000248 00400248 00001812 */  mflo  $v1
/* 00024C 0040024C 5445FFED */  bnel  $v0, $a1, .L00400204
/* 000250 00400250 00621821 */   addu  $v1, $v1, $v0
.L00400254:
/* 000254 00400254 03E00008 */  jr    $ra
/* 000258 00400258 27BD0010 */   addiu $sp, $sp, 0x10

/* 00025C 0040025C 00000000 */  nop

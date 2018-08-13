.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.10.1 (tarball Tue May 29 19:16:06 EDT 2018)"
	.asciz "PixelPaint.iOS.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip PixelPaint_App_Initialize
PixelPaint_App_Initialize:
.file 1 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/PixelPaint/App.cs"
.loc 1 11 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #200]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 1 12 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #208]
bl _p_1
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 1 13 0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip PixelPaint_App__ctor
PixelPaint_App__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #216]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_2
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService:
.file 2 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/PixelPaint/Models/SelectImageViewModel.cs"
.loc 2 12 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #224]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_3
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 2 13 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 2 14 0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController
PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #232]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9004bbf
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xd2800901
.word 0xd2800901
bl _p_4
.word 0xf90057a0
bl _p_5
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9004ba0
.word 0xf9404ba1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404ba0
.word 0xf90053a0
.word 0x910143a0
.word 0xaa0003e8
bl _p_6
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94033a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94037a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9404ba0
.word 0x91004000
.word 0x9100c3a1
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400801
.word 0xf90023a1
.word 0xf9400c00
.word 0xf90027a0
.word 0x9100c3a0
.word 0x9101c3a0
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401fa0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94027a0
.word 0xf90047a0
.word 0x9101c3a0
.word 0x910243a1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #248]
bl _p_7
.word 0xf9400fb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand
PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand:
.loc 2 21 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #256]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9002ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000920

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2800e01
.word 0xd2800e01
bl _p_4
.word 0xf9402ba1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000780
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xf9001401

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xf9002001

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf90027a0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xd2800601
.word 0xd2800601
bl _p_4
.word 0xf94027a1
.word 0xf90023a0
bl _p_8
.word 0xf94013b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_9
.word 0xd2800c40
.word 0xaa1103e1
bl _p_9

Lme_4:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService:
.file 3 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/PixelPaint/Models/TakeImageViewModel.cs"
.loc 3 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_3
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 3 12 0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 3 13 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 3 14 0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView:
.file 4 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/ViewModels/SelectImage/SelectImageDataSource.cs"
.loc 4 10 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #312]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xaa1903e0
bl _p_10
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 4 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 4 12 0
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_11
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9415050
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 4 13 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object:
.loc 4 16 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #320]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 4 17 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #328]
bl _p_12
.word 0xf9002ba0
bl _p_13
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003fa
.loc 4 18 0
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Application_Main_string__
PixelPaint_iOS_Application_Main_string__:
.file 5 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Main.cs"
.loc 5 14 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #336]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 5 17 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd2800001

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #344]
.word 0xd2800001
bl _p_14
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 18 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Application__ctor
PixelPaint_iOS_Application__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #352]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_get_Window
PixelPaint_iOS_AppDelegate_get_Window:
.file 6 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/AppDelegate.cs"
.loc 6 16 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #360]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow:
.loc 6 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
.loc 6 21 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800017
.word 0xd2800016
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 6 22 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
bl _p_15
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x53001c00
.word 0xaa0003f7
.loc 6 24 0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x53001ee0
.word 0xaa0003f6
.loc 6 25 0
.word 0xf9401fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1603e0
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication:
.loc 6 28 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 33 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication:
.loc 6 36 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 39 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication:
.loc 6 42 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 45 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication:
.loc 6 48 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 51 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication:
.loc 6 54 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 56 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate__ctor
PixelPaint_iOS_AppDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #424]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController__ctor
PixelPaint_iOS_Views_SelectImageViewController__ctor:
.file 7 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/SelectImageViewController.cs"
.loc 7 12 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xd2800002
.word 0xd2800002
bl _p_17
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 13 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 14 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad:
.loc 7 17 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #448]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800019
.word 0xd2800018
.word 0xf94023b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 7 18 0
.word 0xf94023b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_18
.word 0xf94023b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.loc 7 20 0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #456]
bl _p_19
.word 0xf94023b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.loc 7 22 0
.word 0xf94023b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #464]
.word 0xaa1a03e0
bl _p_20
.word 0xf9004ba0
.word 0xf94023b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf90047a0
.word 0xaa0003f9
.loc 7 23 0
.word 0xf94023b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_21
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf94043a1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #472]
.word 0xf940001e
bl _p_22
.word 0xaa0003f7
.word 0xf94023b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #480]

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #488]
bl _p_23
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f8
.word 0xf90037a0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #496]
.word 0x910183a1
.word 0xf90033a0
.word 0x910183a0
.word 0x910163a0
.word 0xf94033a0
.word 0xf9002fa0
.word 0x910163a0
.word 0xf9402fa0
bl _p_24
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xeb01001f
.word 0x10000011
.word 0x54000941
.word 0xaa1503e0
.word 0xf94037a0
.word 0xaa1503e1
bl _p_25
.word 0xf9003fa0
.word 0xf94023b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xd2800021
bl _p_26
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90043a0
.word 0xaa1403e0
.word 0xd2800000
.word 0xaa1803e0
.word 0xaa1403e0
.word 0xd2800001
.word 0xaa1803e2
.word 0xf9400283
.word 0xf9405470
.word 0xd63f0200
.word 0xf9403fa0
.word 0xf94043a1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #520]
bl _p_27
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa1703e0
.word 0xf94002fe
bl _p_28
.word 0xf94023b1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.loc 7 24 0
.word 0xf94023b1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403430
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 25 0
.word 0xf94023b1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9432a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd28016c0
.word 0xaa1103e1
bl _p_9

Lme_14:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning:
.loc 7 28 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 7 29 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_29
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 31 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton
PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton:
.file 8 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/SelectImageViewController.designer.cs"
.loc 8 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #536]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9403800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton
PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton:
.loc 8 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #544]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9003820
.word 0x9101c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets:
.loc 8 22 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #552]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 23 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_21
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 8 24 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_21
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_30
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 8 25 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_31
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 26 0
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 27 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_TakeImageViewController__ctor
PixelPaint_iOS_Views_TakeImageViewController__ctor:
.file 9 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/TakeImageViewController.cs"
.loc 9 10 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xd2800002
.word 0xd2800002
bl _p_32
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 9 11 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 9 12 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad
PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad:
.loc 9 15 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 9 16 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_18
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 18 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning
PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning:
.loc 9 21 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 9 22 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_29
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 24 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets
PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets:
.file 10 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/TakeImageViewController.designer.cs"
.loc 10 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 10 19 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor
PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #600]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext
PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext:
.loc 2 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #608]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400006e
.loc 2 16 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 2 17 0
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
.word 0xf9402002
.word 0xd2800000

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #616]

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #624]
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_33
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0
bl _p_34
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000ea0
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x15, [x16, #632]
bl _p_35
.word 0xf9401bb1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000060
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x9100e000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000a80
.word 0x9100e000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0x910183a0
bl _p_36
.word 0xf9401bb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403ba1
bl _p_37
.word 0xf9401bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
bl _p_38
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_39
.word 0x14000019
.loc 2 18 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_40
.word 0xf9401bb1
.word 0xf9439a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_9

Lme_1e:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #640]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.file 11 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/corlib/System/Array.cs"
.loc 11 71 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #648]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90033a0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x350001c0
.loc 11 72 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_41
.word 0x3980b410
.word 0xb5000050
bl _p_42
.word 0xf9402ba0
bl _p_43
.word 0xf9400000
.word 0x14000033
.loc 11 74 0
.word 0xf9400fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf90033a0
.word 0xf9402ba0
bl _p_44
.word 0xaa0003ef
.word 0xf94033a0
.word 0xaa1a03e1
bl _p_45
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_44
.word 0xd2800401
.word 0xd2800401
bl _p_4
.word 0x9100c3a1
.word 0x91004003
.word 0xaa0303e1
.word 0xf9401ba2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.loc 11 61 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #656]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.loc 11 66 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.loc 11 79 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #672]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd283d940
.word 0xd283d940
bl _p_46
.word 0xaa0003e1
.word 0xd2801860
.word 0xf2a04000
.word 0xd2801860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_39
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_REF_T_REF
System_Array_InternalArray__ICollection_Add_T_REF_T_REF:
.loc 11 84 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #680]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd283df40
.word 0xd283df40
bl _p_46
.word 0xaa0003e1
.word 0xd2801860
.word 0xf2a04000
.word 0xd2801860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_39
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
System_Array_InternalArray__ICollection_Remove_T_REF_T_REF:
.loc 11 89 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #688]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd283df40
.word 0xd283df40
bl _p_46
.word 0xaa0003e1
.word 0xd2801860
.word 0xf2a04000
.word 0xd2801860
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_39
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
System_Array_InternalArray__ICollection_Contains_T_REF_T_REF:
.loc 11 94 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90027af
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #696]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9002bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940b000
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ad
.loc 11 95 0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xd283e6c0
.word 0xd283e6c0
bl _p_46
bl _p_47
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2801a00
.word 0xf2a04000
.word 0xd2801a00
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_39
.loc 11 97 0
.word 0xf9401bb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f9
.loc 11 98 0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x14000048
.loc 11 100 0
.word 0xf9401bb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x910143a0
.word 0xf94027a0
bl _p_48
.word 0x93407f00
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xf9002ba0
.loc 11 101 0
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb50001c0
.loc 11 102 0
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000440
.loc 11 103 0
.word 0xf9401bb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000038
.loc 11 109 0
.word 0xf9401bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf9402ba1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000100
.loc 11 110 0
.word 0xf9401bb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.loc 11 98 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x6b19031f
.word 0x54fff5cb
.loc 11 114 0
.word 0xf9401bb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int:
.loc 11 119 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90013b8
.word 0xf9002faf
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #704]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9002bb8
.word 0xaa1803e0
.word 0xd2800000
.word 0xf9400b16
.word 0xeb1f02df
.word 0x54000060
.word 0xb98006d5
.word 0x14000002
.word 0xd2800015
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90033a0
.word 0xb98033a0
.word 0xf90037a0
.word 0xaa1803e0
.word 0xb9801b00
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xf94037a3
.word 0xf9403ba4
.word 0xf9402ba0
.word 0xaa1503e1
bl _p_49
.loc 11 120 0
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xf94013b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription
wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #712]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xb9400000
.word 0x34000140
bl _p_50
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_39
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000480
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb4000200
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000038
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x1400002b
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbab
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801620
.word 0xaa1103e1
bl _p_9

Lme_29:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription
wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #728]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xb9400000
.word 0x34000140
bl _p_50
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_39
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb5000500
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000240
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x1400003b
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x1400002c
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000589
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb6b
.word 0xb9806ba0
.word 0xf9402bb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801620
.word 0xaa1103e1
bl _p_9

Lme_2a:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable
wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #736]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xb9400000
.word 0x34000140
bl _p_50
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_39
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000480
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb4000200
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000038
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x1400002b
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbab
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801620
.word 0xaa1103e1
bl _p_9

Lme_2b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable
wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #744]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xb9400000
.word 0x34000140
bl _p_50
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_39
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb5000500
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000240
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x1400003b
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x1400002c
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000589
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb6b
.word 0xb9806ba0
.word 0xf9402bb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801620
.word 0xaa1103e1
bl _p_9

Lme_2c:
.text
ut_45:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_45
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_:
.file 12 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.12.0.4/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/AsyncMethodBuilder.cs"
.loc 12 161 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9003faf
.word 0xaa0003f8
.word 0xf9002ba1
.word 0xf9002fa2

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #752]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf9403fa0
bl _p_51
.word 0xaa0003f7
.word 0xb98002e0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f6
.word 0xf90043bf
.word 0xd2800015
.word 0xf94033b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90043bf
.loc 12 162 0
.word 0xf94033b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf90067a0
bl _p_52
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf94067a1
.word 0xaa0103f4
.word 0x350000c0
.word 0xaa1403e0
.word 0xd2800000
.word 0xaa1403f3
.word 0xd280001a
.word 0x1400000d
.word 0xaa1403e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_53
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1403f3
.word 0xaa0003fa
.word 0xaa1303e0
.word 0xaa1a03e0
.word 0x910203a2
.word 0xaa1303e0
.word 0xaa1a03e1
bl _p_54
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f5
.loc 12 166 0
.word 0xf94033b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf9400700
.word 0xb50013e0
.loc 12 168 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
bl _p_52
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x340009a0
.loc 12 169 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_53
.word 0xf9007fa0
.word 0xf94033b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_55
.word 0x93407c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #760]
.word 0xf9006ba0
.word 0xf9402fa0
.word 0xf90077a0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #768]
.word 0xf9007ba0
.word 0xf9403fa0
bl _p_56
.word 0xaa0003e2
.word 0xf94077a0
.word 0xf9407ba1
.word 0xd2800003
.word 0xd2800003
.word 0xd2800003
.word 0xd2800004
bl _p_57
.word 0xf90073a0
.word 0xf94033b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405030
.word 0xd63f0200
.word 0xf9006fa0
.word 0xf94033b1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xf9406fa1
bl _p_58
.word 0xf90067a0
.word 0xf94033b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xf94067a2
.word 0xd2800000
.word 0xd2800000
.word 0xd2800003
bl _p_59
.loc 12 174 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf90047a0
.word 0xf9402fa1
.word 0xb9802ae0
.word 0xaa1603e2
.word 0x8b0002c0
.word 0xf9400ee2
.word 0xf94012e3
.word 0xd63f0060
.word 0xf94006f9
.word 0xd280005e
.word 0xeb1e033f
.word 0x54000320
.word 0xd280007e
.word 0xeb1e033f
.word 0x54000380
.word 0xf9403fa0
bl _p_60
bl _p_61
.word 0xb9802ae1
.word 0xaa1603e2
.word 0x8b0102c1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9400ee0
.word 0xf94012e0
.word 0xf9403fa0
bl _p_56
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xf9004ba0
.word 0x1400000e
.word 0xb9802ae0
.word 0xaa1603e1
.word 0x8b0002c0
.word 0xf9400000
.word 0xf9004ba0
.word 0x14000008
.word 0xf9400ae1
.word 0xb9802ae0
.word 0xaa1603e2
.word 0x8b0002c0
.word 0xd63f0020
.word 0xf9004ba0
.word 0x14000001
.word 0xf94043a2
.word 0xd2800000
.word 0xf94047a0
.word 0xf9404ba1
.word 0xd2800003
bl _p_62
.loc 12 177 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90063a0
.word 0xaa1503e0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #776]
.word 0xf90067a0
.word 0xf9403fa0
bl _p_63
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003e4
.word 0xd2800003
.word 0xf9000095
.word 0xd2800003
bl _p_57
.loc 12 178 0
.word 0xf94033b1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90063a0
.loc 12 181 0
.word 0xf94033b1
.word 0xf944b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xd2800001
bl _p_64
.loc 12 182 0
.word 0xf94033b1
.word 0xf944d631
.word 0xb4000051
.word 0xd63f0220
bl _p_38
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_39
.word 0x14000001
.loc 12 183 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf94033b1
.word 0xf9452631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_2d:
.text
ut_46:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.loc 11 218 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #784]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9000320
.word 0xaa1903e1
.word 0xd349ff21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 11 219 0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.loc 11 220 0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl PixelPaint_App_Initialize
bl PixelPaint_App__ctor
bl PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
bl PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController
bl PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand
bl PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
bl PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
bl PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
bl PixelPaint_iOS_Application_Main_string__
bl PixelPaint_iOS_Application__ctor
bl PixelPaint_iOS_AppDelegate_get_Window
bl PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
bl PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
bl PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
bl PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
bl PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
bl PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
bl PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
bl PixelPaint_iOS_AppDelegate__ctor
bl PixelPaint_iOS_Views_SelectImageViewController__ctor
bl PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
bl PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
bl PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton
bl PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton
bl PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
bl PixelPaint_iOS_Views_TakeImageViewController__ctor
bl PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad
bl PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning
bl PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets
bl PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor
bl PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext
bl PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl method_addresses
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
bl System_Array_InternalArray__ICollection_get_Count
bl System_Array_InternalArray__ICollection_get_IsReadOnly
bl System_Array_InternalArray__ICollection_Clear
bl System_Array_InternalArray__ICollection_Add_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
bl System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
bl wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription
bl wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription
bl wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable
bl wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable
bl System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
bl System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 45,46
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_45
bl ut_46

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.byte 14,12,31,0,68,14,176,1,157,22,158,21,68,13,29,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.byte 16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68
	.byte 154,10,13,12,31,0,68,14,64,157,8,158,7,68,13,29,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,150
	.byte 10,151,9,29,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,151,16,152,15,68,153,14,154
	.byte 13,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7,22,12,31,0,68,14,192,1,157,24,158,23
	.byte 68,13,29,68,152,22,153,21,68,154,20,16,12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12,21,12,31,0
	.byte 68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10,22,12,31,0,68,14,128,1,157,16,158,15,68,13
	.byte 29,68,149,14,150,13,68,152,12,34,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14
	.byte 150,13,68,151,12,152,11,68,153,10,154,9,34,12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,147,30,148,29
	.byte 68,149,28,150,27,68,151,26,152,25,68,153,24,154,23

.text
	.align 4
plt:
mono_aot_PixelPaint_iOS_plt:
	.no_dead_strip plt_MvvmCross_ViewModels_MvxApplication_RegisterAppStart_PixelPaint_Models_SelectImageViewModel
plt_MvvmCross_ViewModels_MvxApplication_RegisterAppStart_PixelPaint_Models_SelectImageViewModel:
_p_1:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 1038
	.no_dead_strip plt_MvvmCross_ViewModels_MvxApplication__ctor
plt_MvvmCross_ViewModels_MvxApplication__ctor:
_p_2:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 1050
	.no_dead_strip plt_MvvmCross_ViewModels_MvxViewModel__ctor
plt_MvvmCross_ViewModels_MvxViewModel__ctor:
_p_3:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 1055
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_4:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 1060
	.no_dead_strip plt_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor
plt_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor:
_p_5:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 1068
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create:
_p_6:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 1073
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Start_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_:
_p_7:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 1076
	.no_dead_strip plt_MvvmCross_Commands_MvxCommand__ctor_System_Action
plt_MvvmCross_Commands_MvxCommand__ctor_System_Action:
_p_8:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 1088
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_9:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 1093
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource__ctor_UIKit_UITableView
plt_MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource__ctor_UIKit_UITableView:
_p_10:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 1128
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource_get_TableView
plt_MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource_get_TableView:
_p_11:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 1133
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_12:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 1138
	.no_dead_strip plt_UIKit_UITableViewCell__ctor
plt_UIKit_UITableViewCell__ctor:
_p_13:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 1170
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_14:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 1175
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
_p_15:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 1180
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_2_MvvmCross_Platforms_Ios_Core_MvxIosSetup_1_PixelPaint_App_PixelPaint_App__ctor
plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_2_MvvmCross_Platforms_Ios_Core_MvxIosSetup_1_PixelPaint_App_PixelPaint_App__ctor:
_p_16:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 1185
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_SelectImageViewModel__ctor_string_Foundation_NSBundle
plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_SelectImageViewModel__ctor_string_Foundation_NSBundle:
_p_17:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 1196
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Views_MvxViewController_ViewDidLoad
plt_MvvmCross_Platforms_Ios_Views_MvxViewController_ViewDidLoad:
_p_18:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 1207
	.no_dead_strip plt_System_Console_WriteLine_string
plt_System_Console_WriteLine_string:
_p_19:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 1212
	.no_dead_strip plt_MvvmCross_Binding_BindingContext_MvxBindingContextOwnerExtensions_CreateBindingSet_PixelPaint_iOS_Views_SelectImageViewController_PixelPaint_Models_SelectImageViewModel_PixelPaint_iOS_Views_SelectImageViewController
plt_MvvmCross_Binding_BindingContext_MvxBindingContextOwnerExtensions_CreateBindingSet_PixelPaint_iOS_Views_SelectImageViewController_PixelPaint_Models_SelectImageViewModel_PixelPaint_iOS_Views_SelectImageViewController:
_p_20:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 1215
	.no_dead_strip plt_PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton
plt_PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton:
_p_21:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 1227
	.no_dead_strip plt_MvvmCross_Binding_BindingContext_MvxFluentBindingDescriptionSet_2_PixelPaint_iOS_Views_SelectImageViewController_PixelPaint_Models_SelectImageViewModel_Bind_UIKit_UIButton_UIKit_UIButton
plt_MvvmCross_Binding_BindingContext_MvxFluentBindingDescriptionSet_2_PixelPaint_iOS_Views_SelectImageViewController_PixelPaint_Models_SelectImageViewModel_Bind_UIKit_UIButton_UIKit_UIButton:
_p_22:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 1232
	.no_dead_strip plt_System_Linq_Expressions_Expression_Parameter_System_Type_string
plt_System_Linq_Expressions_Expression_Parameter_System_Type_string:
_p_23:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 1244
	.no_dead_strip plt_System_Reflection_MethodBase_GetMethodFromHandle_System_RuntimeMethodHandle
plt_System_Reflection_MethodBase_GetMethodFromHandle_System_RuntimeMethodHandle:
_p_24:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 1249
	.no_dead_strip plt_System_Linq_Expressions_Expression_Property_System_Linq_Expressions_Expression_System_Reflection_MethodInfo
plt_System_Linq_Expressions_Expression_Property_System_Linq_Expressions_Expression_System_Reflection_MethodInfo:
_p_25:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 1252
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_26:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 1257
	.no_dead_strip plt_System_Linq_Expressions_Expression_Lambda_System_Func_2_PixelPaint_Models_SelectImageViewModel_object_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__
plt_System_Linq_Expressions_Expression_Lambda_System_Func_2_PixelPaint_Models_SelectImageViewModel_object_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__:
_p_27:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 1265
	.no_dead_strip plt_MvvmCross_Binding_BindingContext_MvxFluentBindingDescription_2_UIKit_UIButton_PixelPaint_Models_SelectImageViewModel_To_System_Linq_Expressions_Expression_1_System_Func_2_PixelPaint_Models_SelectImageViewModel_object
plt_MvvmCross_Binding_BindingContext_MvxFluentBindingDescription_2_UIKit_UIButton_PixelPaint_Models_SelectImageViewModel_To_System_Linq_Expressions_Expression_1_System_Func_2_PixelPaint_Models_SelectImageViewModel_object:
_p_28:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 1277
	.no_dead_strip plt_UIKit_UIViewController_DidReceiveMemoryWarning
plt_UIKit_UIViewController_DidReceiveMemoryWarning:
_p_29:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 1288
	.no_dead_strip plt_Foundation_NSObject_Dispose
plt_Foundation_NSObject_Dispose:
_p_30:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 1293
	.no_dead_strip plt_PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton
plt_PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton:
_p_31:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 1298
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_TakeImageViewModel__ctor_string_Foundation_NSBundle
plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_TakeImageViewModel__ctor_string_Foundation_NSBundle:
_p_32:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 1303
	.no_dead_strip plt_System_Threading_Tasks_Task_GetAwaiter
plt_System_Threading_Tasks_Task_GetAwaiter:
_p_33:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 1314
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted
plt_System_Runtime_CompilerServices_TaskAwaiter_get_IsCompleted:
_p_34:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 1317
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_System_Runtime_CompilerServices_TaskAwaiter__PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_System_Runtime_CompilerServices_TaskAwaiter__PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_:
_p_35:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 1320
	.no_dead_strip plt_System_Runtime_CompilerServices_TaskAwaiter_GetResult
plt_System_Runtime_CompilerServices_TaskAwaiter_GetResult:
_p_36:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 1332
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception:
_p_37:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 1335
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_38:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 1338
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_39:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 1377
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult:
_p_40:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 1405
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_41:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 1432
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_42:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 1440
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_43:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 1466
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_44:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 1481
	.no_dead_strip plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
_p_45:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 1489
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_46:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 1508
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_47:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 1537
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_48:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 1556
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_49:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 1578
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_50:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 1581
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_51:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 1640
	.no_dead_strip plt_System_Threading_Tasks_AsyncCausalityTracer_get_LoggingOn
plt_System_Threading_Tasks_AsyncCausalityTracer_get_LoggingOn:
_p_52:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 1689
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_get_Task
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_get_Task:
_p_53:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 1692
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_:
_p_54:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 1695
	.no_dead_strip plt_System_Threading_Tasks_Task_get_Id
plt_System_Threading_Tasks_Task_get_Id:
_p_55:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 1698
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_56:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 1701
	.no_dead_strip plt__jit_icall_mono_gsharedvt_constrained_call
plt__jit_icall_mono_gsharedvt_constrained_call:
_p_57:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 1709
	.no_dead_strip plt_string_Concat_string_string
plt_string_Concat_string_string:
_p_58:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 1743
	.no_dead_strip plt_System_Threading_Tasks_AsyncCausalityTracer_TraceOperationCreation_System_Threading_Tasks_CausalityTraceLevel_int_string_ulong
plt_System_Threading_Tasks_AsyncCausalityTracer_TraceOperationCreation_System_Threading_Tasks_CausalityTraceLevel_int_string_ulong:
_p_59:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 1746
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_60:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1272]
br x16
.word 1749
	.no_dead_strip plt_wrapper_alloc_object_Alloc_intptr
plt_wrapper_alloc_object_Alloc_intptr:
_p_61:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1280]
br x16
.word 1757
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task:
_p_62:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1288]
br x16
.word 1765
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_63:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1296]
br x16
.word 1768
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext:
_p_64:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #1304]
br x16
.word 1776
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_PixelPaint_iOS_got, 1312
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "610B6164-07DC-4F70-BA72-A77D842545C3"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "PixelPaint.iOS"
.data
	.align 3
_mono_aot_file_info:

	.long 143,0
	.align 3
	.quad mono_aot_PixelPaint_iOS_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 99,1312,65,47,70,391195135,0,7457
	.long 128,8,8,9,0,25,8952,1488
	.long 1056,680,0,920,1016,768,0,560
	.long 80,1480,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
	.byte 210,96,47,96,205,201,48,171,196,65,213,51,53,195,78,39
	.globl _mono_aot_module_PixelPaint_iOS_info
	.align 3
_mono_aot_module_PixelPaint_iOS_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_3:

	.byte 17
	.asciz "MvvmCross_ViewModels_IMvxViewModelLocator"

	.byte 16,7
	.asciz "MvvmCross_ViewModels_IMvxViewModelLocator"

LDIFF_SYM7=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_1:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxApplication"

	.byte 24,16
LDIFF_SYM10=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "_defaultLocator"

LDIFF_SYM11=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,16,0,7
	.asciz "MvvmCross_ViewModels_MvxApplication"

LDIFF_SYM12=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_0:

	.byte 5
	.asciz "PixelPaint_App"

	.byte 24,16
LDIFF_SYM15=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,0,7
	.asciz "PixelPaint_App"

LDIFF_SYM16=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM17=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM18=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2
	.asciz "PixelPaint.App:Initialize"
	.asciz "PixelPaint_App_Initialize"

	.byte 1,11
	.quad PixelPaint_App_Initialize
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM19=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM20=Lfde0_end - Lfde0_start
	.long LDIFF_SYM20
Lfde0_start:

	.long 0
	.align 3
	.quad PixelPaint_App_Initialize

LDIFF_SYM21=Lme_0 - PixelPaint_App_Initialize
	.long LDIFF_SYM21
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.App:.ctor"
	.asciz "PixelPaint_App__ctor"

	.byte 0,0
	.quad PixelPaint_App__ctor
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM22=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM23=Lfde1_end - Lfde1_start
	.long LDIFF_SYM23
Lfde1_start:

	.long 0
	.align 3
	.quad PixelPaint_App__ctor

LDIFF_SYM24=Lme_1 - PixelPaint_App__ctor
	.long LDIFF_SYM24
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 5
	.asciz "MvvmCross_Base_MvxMainThreadDispatchingObject"

	.byte 16,16
LDIFF_SYM25=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Base_MvxMainThreadDispatchingObject"

LDIFF_SYM26=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM27=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM28=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_13:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM29=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM30=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM31=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM32=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_12:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM33=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM34=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM35=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM36=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_11:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM37=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM38=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_15:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM41=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM42=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM43=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM44=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM45=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_17:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM46=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM47=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM48=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM49=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_16:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM50=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM51=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM52=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM53=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM54=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_14:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM55=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM56=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM57=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM58=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM59=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM60=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM61=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_10:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM62=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM63=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM64=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM65=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM66=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM67=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM68=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM69=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM70=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM71=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM72=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM73=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM74=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM75=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM76=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_9:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM77=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM78=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM79=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM80=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM81=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_8:

	.byte 5
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

	.byte 112,16
LDIFF_SYM82=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

LDIFF_SYM83=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM84=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM85=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_6:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxNotifyPropertyChanged"

	.byte 32,16
LDIFF_SYM86=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,0,6
	.asciz "PropertyChanged"

LDIFF_SYM87=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,16,6
	.asciz "_shouldAlwaysRaiseInpcOnUserInterfaceThread"

LDIFF_SYM88=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,24,0,7
	.asciz "MvvmCross_ViewModels_MvxNotifyPropertyChanged"

LDIFF_SYM89=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM90=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM91=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_18:

	.byte 17
	.asciz "MvvmCross_Logging_IMvxLog"

	.byte 16,7
	.asciz "MvvmCross_Logging_IMvxLog"

LDIFF_SYM92=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM93=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM94=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_19:

	.byte 17
	.asciz "MvvmCross_Navigation_IMvxNavigationService"

	.byte 16,7
	.asciz "MvvmCross_Navigation_IMvxNavigationService"

LDIFF_SYM95=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM96=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM97=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_20:

	.byte 17
	.asciz "MvvmCross_Logging_IMvxLogProvider"

	.byte 16,7
	.asciz "MvvmCross_Logging_IMvxLogProvider"

LDIFF_SYM98=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM99=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM100=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_22:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM101=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM102=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM103=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM104=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_24:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM105=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM106=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM107=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM108=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM109=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_25:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM110=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM111=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM112=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM113=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM114=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_28:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 16,16
LDIFF_SYM115=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM116=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM117=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM118=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_31:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM119=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM120=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM121=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM122=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM123=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_32:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM124=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM125=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM126=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_30:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 64,16
LDIFF_SYM127=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM128=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM129=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,40,6
	.asciz "occupancy"

LDIFF_SYM130=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,44,6
	.asciz "loadsize"

LDIFF_SYM131=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,48,6
	.asciz "loadFactor"

LDIFF_SYM132=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,52,6
	.asciz "version"

LDIFF_SYM133=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,56,6
	.asciz "isWriterInProgress"

LDIFF_SYM134=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,60,6
	.asciz "_keycomparer"

LDIFF_SYM135=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM136=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,32,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM137=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM138=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM139=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_33:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM140=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM141=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM142=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM143=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_34:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM144=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM145=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM146=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM147=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_29:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM148=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM149=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM150=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM151=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM152=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM153=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM154=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM155=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM156=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_35:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM157=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM158=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM159=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM160=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_36:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM161=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM162=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM162
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM163=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM163
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM164=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_38:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM165=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM166=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM167=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM167
LTDIE_39:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM168=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM169=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM170=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM170
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM171=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM171
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM172=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM172
LTDIE_40:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM173=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM174=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM175=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM176=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM177=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_37:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM178=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM179=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM180=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM181=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,56,6
	.asciz "_freeList"

LDIFF_SYM182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,60,6
	.asciz "_freeCount"

LDIFF_SYM183=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,64,6
	.asciz "_version"

LDIFF_SYM184=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,68,6
	.asciz "_comparer"

LDIFF_SYM185=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM186=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM187=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM188=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM189=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM190=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_41:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM191=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM192=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM193=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM194=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM195=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM195
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM196=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM197=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM197
LTDIE_27:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM198=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM199=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM200=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM201=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM202=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM203=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM204=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM205=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM206=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM207=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM208=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_46:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM209=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM210=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM211=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM212=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM213=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_50:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM214=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM215=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM216=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM217=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_49:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM218=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM219=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM221=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM222=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM223=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM224=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM224
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM225=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_48:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM226=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM227=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM228=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM229=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_47:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM230=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM231=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM232=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM233=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_45:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 48,16
LDIFF_SYM234=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM235=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,24,6
	.asciz "safeWaitHandle"

LDIFF_SYM236=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,32,6
	.asciz "hasThreadAffinity"

LDIFF_SYM237=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,40,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM238=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM239=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM240=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_44:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 48,16
LDIFF_SYM241=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM242=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM243=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM244=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_43:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 48,16
LDIFF_SYM245=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM246=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM247=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM248=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_42:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM249=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM250=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM251=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM252=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM253=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM254=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM255=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_52:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM256=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM257=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM259=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM260=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM260
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM261=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM261
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM262=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM262
LTDIE_55:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM263=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM263
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM264=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM264
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM265=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM265
LTDIE_57:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM266=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM267=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM268=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_56:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 32,16
LDIFF_SYM269=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM270=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,35,16,6
	.asciz "m_realObject"

LDIFF_SYM271=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM272=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM273=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM273
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM274=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_54:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM275=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM276=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM277=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM278=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM279=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM280=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM281=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM282=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM283=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM284=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM285=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM286=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM287=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM288=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM289=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM290=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM291=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM292=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM293=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_53:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM294=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM295=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM296=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM297=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM297
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM298=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM299=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_51:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM300=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM301=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM302=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM303=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM304=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM305=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM306=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM307=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM307
LTDIE_58:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM308=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM309=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM310=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM311=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM312=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM312
LTDIE_59:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM313=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM314=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM316=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM317=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM318=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM318
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM319=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM319
LTDIE_26:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM320=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM321=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM322=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM323=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM324=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM325=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM328=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM329=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM329
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM330=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM331=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_23:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM332=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM333=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM334=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM335=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM336=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM337=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM338=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM339=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM340=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM341=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM342=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM343=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM343
LTDIE_21:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxNotifyTask"

	.byte 48,16
LDIFF_SYM344=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,0,6
	.asciz "_onException"

LDIFF_SYM345=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,16,6
	.asciz "<Task>k__BackingField"

LDIFF_SYM346=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,24,6
	.asciz "<TaskCompleted>k__BackingField"

LDIFF_SYM347=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,32,6
	.asciz "PropertyChanged"

LDIFF_SYM348=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,40,0,7
	.asciz "MvvmCross_ViewModels_MvxNotifyTask"

LDIFF_SYM349=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM350=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM351=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM351
LTDIE_5:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxViewModel"

	.byte 64,16
LDIFF_SYM352=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,0,6
	.asciz "_log"

LDIFF_SYM353=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,32,6
	.asciz "<NavigationService>k__BackingField"

LDIFF_SYM354=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,40,6
	.asciz "<LogProvider>k__BackingField"

LDIFF_SYM355=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,48,6
	.asciz "_initializeTask"

LDIFF_SYM356=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,56,0,7
	.asciz "MvvmCross_ViewModels_MvxViewModel"

LDIFF_SYM357=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM357
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM358=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM358
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM359=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM359
LTDIE_4:

	.byte 5
	.asciz "PixelPaint_Models_SelectImageViewModel"

	.byte 72,16
LDIFF_SYM360=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,0,6
	.asciz "navigationService"

LDIFF_SYM361=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,64,0,7
	.asciz "PixelPaint_Models_SelectImageViewModel"

LDIFF_SYM362=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM362
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM363=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM363
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM364=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel:.ctor"
	.asciz "PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService"

	.byte 2,12
	.quad PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM365=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 1,105,3
	.asciz "modelNavigationService"

LDIFF_SYM366=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM367=Lfde2_end - Lfde2_start
	.long LDIFF_SYM367
Lfde2_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService

LDIFF_SYM368=Lme_2 - PixelPaint_Models_SelectImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
	.long LDIFF_SYM368
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_60:

	.byte 5
	.asciz "_<NavigateToImageTakeController>d__2"

	.byte 72,16
LDIFF_SYM369=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,0,6
	.asciz "<>1__state"

LDIFF_SYM370=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,64,6
	.asciz "<>t__builder"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,16,6
	.asciz "<>4__this"

LDIFF_SYM372=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,48,6
	.asciz "<>u__1"

LDIFF_SYM373=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,56,0,7
	.asciz "_<NavigateToImageTakeController>d__2"

LDIFF_SYM374=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM374
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM375=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM376=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel:NavigateToImageTakeController"
	.asciz "PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController"

	.byte 0,0
	.quad PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM377=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM378=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 3,141,144,1,11
	.asciz "V_1"

LDIFF_SYM379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM380=Lfde3_end - Lfde3_start
	.long LDIFF_SYM380
Lfde3_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController

LDIFF_SYM381=Lme_3 - PixelPaint_Models_SelectImageViewModel_NavigateToImageTakeController
	.long LDIFF_SYM381
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_61:

	.byte 17
	.asciz "MvvmCross_Commands_IMvxCommand"

	.byte 16,7
	.asciz "MvvmCross_Commands_IMvxCommand"

LDIFF_SYM382=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM382
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM383=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM383
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM384=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel:get_MoveToImageTakeCommand"
	.asciz "PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand"

	.byte 2,21
	.quad PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM385=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM386=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM387=Lfde4_end - Lfde4_start
	.long LDIFF_SYM387
Lfde4_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand

LDIFF_SYM388=Lme_4 - PixelPaint_Models_SelectImageViewModel_get_MoveToImageTakeCommand
	.long LDIFF_SYM388
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_62:

	.byte 5
	.asciz "PixelPaint_Models_TakeImageViewModel"

	.byte 72,16
LDIFF_SYM389=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,35,0,6
	.asciz "navigationService"

LDIFF_SYM390=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,35,64,0,7
	.asciz "PixelPaint_Models_TakeImageViewModel"

LDIFF_SYM391=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM391
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM392=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM392
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM393=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2
	.asciz "PixelPaint.Models.TakeImageViewModel:.ctor"
	.asciz "PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService"

	.byte 3,11
	.quad PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM394=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 1,105,3
	.asciz "modelNavigationService"

LDIFF_SYM395=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM396=Lfde5_end - Lfde5_start
	.long LDIFF_SYM396
Lfde5_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService

LDIFF_SYM397=Lme_5 - PixelPaint_Models_TakeImageViewModel__ctor_MvvmCross_Navigation_IMvxNavigationService
	.long LDIFF_SYM397
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_69:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM398=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM399=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM400=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM400
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM401=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM401
LTDIE_68:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM402=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM403=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM404=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM405=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM406=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM407=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM407
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM408=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM408
LTDIE_67:

	.byte 5
	.asciz "UIKit_UIScrollViewDelegate"

	.byte 40,16
LDIFF_SYM409=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,0,0,7
	.asciz "UIKit_UIScrollViewDelegate"

LDIFF_SYM410=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM411=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM412=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_66:

	.byte 5
	.asciz "UIKit_UITableViewSource"

	.byte 40,16
LDIFF_SYM413=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,0,0,7
	.asciz "UIKit_UITableViewSource"

LDIFF_SYM414=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM414
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM415=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM415
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM416=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_73:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM417=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM417
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM418=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM419=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM420=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM420
LTDIE_72:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 40,16
LDIFF_SYM421=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,0,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM422=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM423=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM424=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM424
LTDIE_71:

	.byte 5
	.asciz "UIKit_UIScrollView"

	.byte 40,16
LDIFF_SYM425=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,0,0,7
	.asciz "UIKit_UIScrollView"

LDIFF_SYM426=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM426
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM427=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM427
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM428=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM428
LTDIE_70:

	.byte 5
	.asciz "UIKit_UITableView"

	.byte 40,16
LDIFF_SYM429=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,0,0,7
	.asciz "UIKit_UITableView"

LDIFF_SYM430=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM431=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM431
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM432=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_74:

	.byte 17
	.asciz "System_Windows_Input_ICommand"

	.byte 16,7
	.asciz "System_Windows_Input_ICommand"

LDIFF_SYM433=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM433
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM434=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM434
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM435=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM435
LTDIE_75:

	.byte 5
	.asciz "System_EventHandler"

	.byte 112,16
LDIFF_SYM436=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM437=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM438=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM438
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM439=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM439
LTDIE_65:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource"

	.byte 88,16
LDIFF_SYM440=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,0,6
	.asciz "_tableView"

LDIFF_SYM441=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 2,35,40,6
	.asciz "<DeselectAutomatically>k__BackingField"

LDIFF_SYM442=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,80,6
	.asciz "<SelectionChangedCommand>k__BackingField"

LDIFF_SYM443=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,35,48,6
	.asciz "<AccessoryTappedCommand>k__BackingField"

LDIFF_SYM444=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,56,6
	.asciz "_selectedItem"

LDIFF_SYM445=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2,35,64,6
	.asciz "SelectedItemChanged"

LDIFF_SYM446=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,72,0,7
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource"

LDIFF_SYM447=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM447
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM448=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM448
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM449=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_76:

	.byte 17
	.asciz "System_Collections_IEnumerable"

	.byte 16,7
	.asciz "System_Collections_IEnumerable"

LDIFF_SYM450=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM451=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM452=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM452
LTDIE_77:

	.byte 17
	.asciz "System_IDisposable"

	.byte 16,7
	.asciz "System_IDisposable"

LDIFF_SYM453=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM454=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM454
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM455=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_78:

	.byte 8
	.asciz "UIKit_UITableViewRowAnimation"

	.byte 8
LDIFF_SYM456=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 9
	.asciz "Fade"

	.byte 0,9
	.asciz "Right"

	.byte 1,9
	.asciz "Left"

	.byte 2,9
	.asciz "Top"

	.byte 3,9
	.asciz "Bottom"

	.byte 4,9
	.asciz "None"

	.byte 5,9
	.asciz "Middle"

	.byte 6,9
	.asciz "Automatic"

	.byte 228,0,0,7
	.asciz "UIKit_UITableViewRowAnimation"

LDIFF_SYM457=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM458=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM458
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM459=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM459
LTDIE_64:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource"

	.byte 136,1,16
LDIFF_SYM460=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,0,6
	.asciz "_itemsSource"

LDIFF_SYM461=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,88,6
	.asciz "_subscription"

LDIFF_SYM462=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,96,6
	.asciz "<ReloadOnAllItemsSourceSets>k__BackingField"

LDIFF_SYM463=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,104,6
	.asciz "<UseAnimations>k__BackingField"

LDIFF_SYM464=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,105,6
	.asciz "<AddAnimation>k__BackingField"

LDIFF_SYM465=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,35,112,6
	.asciz "<RemoveAnimation>k__BackingField"

LDIFF_SYM466=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,120,6
	.asciz "<ReplaceAnimation>k__BackingField"

LDIFF_SYM467=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 3,35,128,1,0,7
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource"

LDIFF_SYM468=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM468
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM469=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM469
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM470=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_63:

	.byte 5
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource"

	.byte 136,1,16
LDIFF_SYM471=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,35,0,0,7
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource"

LDIFF_SYM472=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM472
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM473=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM473
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM474=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2
	.asciz "PixelPaint.Models.SelectImage.SelectImageDataSource:.ctor"
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView"

	.byte 4,10
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM475=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 1,105,3
	.asciz "table"

LDIFF_SYM476=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM476
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM477=Lfde6_end - Lfde6_start
	.long LDIFF_SYM477
Lfde6_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView

LDIFF_SYM478=Lme_6 - PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
	.long LDIFF_SYM478
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_79:

	.byte 5
	.asciz "Foundation_NSIndexPath"

	.byte 40,16
LDIFF_SYM479=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,0,0,7
	.asciz "Foundation_NSIndexPath"

LDIFF_SYM480=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM480
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM481=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM482=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_80:

	.byte 5
	.asciz "UIKit_UITableViewCell"

	.byte 40,16
LDIFF_SYM483=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,0,0,7
	.asciz "UIKit_UITableViewCell"

LDIFF_SYM484=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM484
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM485=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM485
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM486=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2
	.asciz "PixelPaint.Models.SelectImage.SelectImageDataSource:GetOrCreateCellFor"
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object"

	.byte 4,16
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM487=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,141,24,3
	.asciz "tableView"

LDIFF_SYM488=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,141,32,3
	.asciz "indexPath"

LDIFF_SYM489=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,141,40,3
	.asciz "item"

LDIFF_SYM490=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM491=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM492=Lfde7_end - Lfde7_start
	.long LDIFF_SYM492
Lfde7_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object

LDIFF_SYM493=Lme_7 - PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
	.long LDIFF_SYM493
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Application:Main"
	.asciz "PixelPaint_iOS_Application_Main_string__"

	.byte 5,14
	.quad PixelPaint_iOS_Application_Main_string__
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM494=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM495=Lfde8_end - Lfde8_start
	.long LDIFF_SYM495
Lfde8_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Application_Main_string__

LDIFF_SYM496=Lme_8 - PixelPaint_iOS_Application_Main_string__
	.long LDIFF_SYM496
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_81:

	.byte 5
	.asciz "PixelPaint_iOS_Application"

	.byte 16,16
LDIFF_SYM497=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,0,0,7
	.asciz "PixelPaint_iOS_Application"

LDIFF_SYM498=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM498
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM499=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM499
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM500=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2
	.asciz "PixelPaint.iOS.Application:.ctor"
	.asciz "PixelPaint_iOS_Application__ctor"

	.byte 0,0
	.quad PixelPaint_iOS_Application__ctor
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM501=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM502=Lfde9_end - Lfde9_start
	.long LDIFF_SYM502
Lfde9_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Application__ctor

LDIFF_SYM503=Lme_9 - PixelPaint_iOS_Application__ctor
	.long LDIFF_SYM503
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_85:

	.byte 5
	.asciz "UIKit_UIApplicationDelegate"

	.byte 40,16
LDIFF_SYM504=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplicationDelegate"

LDIFF_SYM505=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM505
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM506=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM506
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM507=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM507
LTDIE_86:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM508=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM509=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM509
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM510=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM510
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM511=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM511
LTDIE_87:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM512=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM513=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM513
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM514=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM514
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM515=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM515
LTDIE_84:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate"

	.byte 56,16
LDIFF_SYM516=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM517=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,35,40,6
	.asciz "LifetimeChanged"

LDIFF_SYM518=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 2,35,48,0,7
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate"

LDIFF_SYM519=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM520=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM521=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_83:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate`2"

	.byte 56,16
LDIFF_SYM522=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate`2"

LDIFF_SYM523=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM523
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM524=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM524
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM525=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM525
LTDIE_82:

	.byte 5
	.asciz "PixelPaint_iOS_AppDelegate"

	.byte 64,16
LDIFF_SYM526=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM527=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,35,56,0,7
	.asciz "PixelPaint_iOS_AppDelegate"

LDIFF_SYM528=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM528
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM529=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM529
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM530=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:get_Window"
	.asciz "PixelPaint_iOS_AppDelegate_get_Window"

	.byte 6,16
	.quad PixelPaint_iOS_AppDelegate_get_Window
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM531=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM532=Lfde10_end - Lfde10_start
	.long LDIFF_SYM532
Lfde10_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_get_Window

LDIFF_SYM533=Lme_a - PixelPaint_iOS_AppDelegate_get_Window
	.long LDIFF_SYM533
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:set_Window"
	.asciz "PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow"

	.byte 6,17
	.quad PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM534=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM535=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM536=Lfde11_end - Lfde11_start
	.long LDIFF_SYM536
Lfde11_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow

LDIFF_SYM537=Lme_b - PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
	.long LDIFF_SYM537
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_88:

	.byte 5
	.asciz "UIKit_UIApplication"

	.byte 40,16
LDIFF_SYM538=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplication"

LDIFF_SYM539=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM539
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM540=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM540
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM541=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM541
LTDIE_89:

	.byte 5
	.asciz "Foundation_NSDictionary"

	.byte 40,16
LDIFF_SYM542=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,0,0,7
	.asciz "Foundation_NSDictionary"

LDIFF_SYM543=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM543
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM544=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM544
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM545=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:FinishedLaunching"
	.asciz "PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary"

	.byte 6,21
	.quad PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM546=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,141,32,3
	.asciz "application"

LDIFF_SYM547=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,141,40,3
	.asciz "launchOptions"

LDIFF_SYM548=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 2,141,48,11
	.asciz "result"

LDIFF_SYM549=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM550=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM551=Lfde12_end - Lfde12_start
	.long LDIFF_SYM551
Lfde12_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

LDIFF_SYM552=Lme_c - PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.long LDIFF_SYM552
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:OnResignActivation"
	.asciz "PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication"

	.byte 6,28
	.quad PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM553=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM554=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM555=Lfde13_end - Lfde13_start
	.long LDIFF_SYM555
Lfde13_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication

LDIFF_SYM556=Lme_d - PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
	.long LDIFF_SYM556
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:DidEnterBackground"
	.asciz "PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication"

	.byte 6,36
	.quad PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM557=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM558=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM559=Lfde14_end - Lfde14_start
	.long LDIFF_SYM559
Lfde14_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication

LDIFF_SYM560=Lme_e - PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.long LDIFF_SYM560
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:WillEnterForeground"
	.asciz "PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication"

	.byte 6,42
	.quad PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM561=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM562=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM563=Lfde15_end - Lfde15_start
	.long LDIFF_SYM563
Lfde15_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication

LDIFF_SYM564=Lme_f - PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.long LDIFF_SYM564
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:OnActivated"
	.asciz "PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication"

	.byte 6,48
	.quad PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM565=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM566=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM567=Lfde16_end - Lfde16_start
	.long LDIFF_SYM567
Lfde16_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication

LDIFF_SYM568=Lme_10 - PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
	.long LDIFF_SYM568
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:WillTerminate"
	.asciz "PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication"

	.byte 6,54
	.quad PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM569=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM570=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM571=Lfde17_end - Lfde17_start
	.long LDIFF_SYM571
Lfde17_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication

LDIFF_SYM572=Lme_11 - PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
	.long LDIFF_SYM572
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:.ctor"
	.asciz "PixelPaint_iOS_AppDelegate__ctor"

	.byte 0,0
	.quad PixelPaint_iOS_AppDelegate__ctor
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM573=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM574=Lfde18_end - Lfde18_start
	.long LDIFF_SYM574
Lfde18_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate__ctor

LDIFF_SYM575=Lme_12 - PixelPaint_iOS_AppDelegate__ctor
	.long LDIFF_SYM575
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_94:

	.byte 5
	.asciz "UIKit_UIViewController"

	.byte 40,16
LDIFF_SYM576=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 2,35,0,0,7
	.asciz "UIKit_UIViewController"

LDIFF_SYM577=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM578=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM579=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_95:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM580=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM581=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM581
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM582=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM582
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM583=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM583
LTDIE_93:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_Base_MvxEventSourceViewController"

	.byte 96,16
LDIFF_SYM584=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 2,35,0,6
	.asciz "ViewDidLoadCalled"

LDIFF_SYM585=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,40,6
	.asciz "ViewDidLayoutSubviewsCalled"

LDIFF_SYM586=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM586
	.byte 2,35,48,6
	.asciz "ViewWillAppearCalled"

LDIFF_SYM587=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 2,35,56,6
	.asciz "ViewDidAppearCalled"

LDIFF_SYM588=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2,35,64,6
	.asciz "ViewDidDisappearCalled"

LDIFF_SYM589=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,72,6
	.asciz "ViewWillDisappearCalled"

LDIFF_SYM590=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,80,6
	.asciz "DisposeCalled"

LDIFF_SYM591=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 2,35,88,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_Base_MvxEventSourceViewController"

LDIFF_SYM592=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM593=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM594=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_97:

	.byte 17
	.asciz "System_Collections_Generic_IDictionary`2"

	.byte 16,7
	.asciz "System_Collections_Generic_IDictionary`2"

LDIFF_SYM595=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM596=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM596
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM597=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM597
LTDIE_96:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxViewModelRequest"

	.byte 40,16
LDIFF_SYM598=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,0,6
	.asciz "<ViewModelType>k__BackingField"

LDIFF_SYM599=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,16,6
	.asciz "<ParameterValues>k__BackingField"

LDIFF_SYM600=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 2,35,24,6
	.asciz "<PresentationValues>k__BackingField"

LDIFF_SYM601=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,32,0,7
	.asciz "MvvmCross_ViewModels_MvxViewModelRequest"

LDIFF_SYM602=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM602
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM603=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM603
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM604=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM604
LTDIE_98:

	.byte 17
	.asciz "MvvmCross_Binding_BindingContext_IMvxBindingContext"

	.byte 16,7
	.asciz "MvvmCross_Binding_BindingContext_IMvxBindingContext"

LDIFF_SYM605=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM605
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM606=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM606
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM607=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM607
LTDIE_92:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController"

	.byte 112,16
LDIFF_SYM608=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,0,6
	.asciz "<Request>k__BackingField"

LDIFF_SYM609=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,96,6
	.asciz "<BindingContext>k__BackingField"

LDIFF_SYM610=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,104,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController"

LDIFF_SYM611=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM611
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM612=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM612
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM613=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM613
LTDIE_91:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

	.byte 112,16
LDIFF_SYM614=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

LDIFF_SYM615=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM615
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM616=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM616
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM617=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM617
LTDIE_100:

	.byte 5
	.asciz "UIKit_UIControl"

	.byte 40,16
LDIFF_SYM618=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,0,0,7
	.asciz "UIKit_UIControl"

LDIFF_SYM619=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM619
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM620=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM620
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM621=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM621
LTDIE_99:

	.byte 5
	.asciz "UIKit_UIButton"

	.byte 40,16
LDIFF_SYM622=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 2,35,0,0,7
	.asciz "UIKit_UIButton"

LDIFF_SYM623=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM623
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM624=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM624
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM625=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM625
LTDIE_90:

	.byte 5
	.asciz "PixelPaint_iOS_Views_SelectImageViewController"

	.byte 120,16
LDIFF_SYM626=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,0,6
	.asciz "<TakeImageButton>k__BackingField"

LDIFF_SYM627=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 2,35,112,0,7
	.asciz "PixelPaint_iOS_Views_SelectImageViewController"

LDIFF_SYM628=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM628
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM629=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM629
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM630=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:.ctor"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController__ctor"

	.byte 7,12
	.quad PixelPaint_iOS_Views_SelectImageViewController__ctor
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM631=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM632=Lfde19_end - Lfde19_start
	.long LDIFF_SYM632
Lfde19_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController__ctor

LDIFF_SYM633=Lme_13 - PixelPaint_iOS_Views_SelectImageViewController__ctor
	.long LDIFF_SYM633
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_102:

	.byte 5
	.asciz "MvvmCross_Base_MvxApplicable"

	.byte 17,16
LDIFF_SYM634=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,0,6
	.asciz "_finalizerSuppressed"

LDIFF_SYM635=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 2,35,16,0,7
	.asciz "MvvmCross_Base_MvxApplicable"

LDIFF_SYM636=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM636
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM637=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM637
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM638=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM638
LTDIE_103:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM639=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM640=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM641=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM642=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM643=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM643
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM644=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM645=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM645
LTDIE_101:

	.byte 5
	.asciz "MvvmCross_Binding_BindingContext_MvxFluentBindingDescriptionSet`2"

	.byte 40,16
LDIFF_SYM646=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2,35,0,6
	.asciz "_applicables"

LDIFF_SYM647=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 2,35,24,6
	.asciz "_bindingContextOwner"

LDIFF_SYM648=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 2,35,32,0,7
	.asciz "MvvmCross_Binding_BindingContext_MvxFluentBindingDescriptionSet`2"

LDIFF_SYM649=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM650=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM650
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM651=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM651
LTDIE_105:

	.byte 5
	.asciz "System_Linq_Expressions_Expression"

	.byte 16,16
LDIFF_SYM652=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,35,0,0,7
	.asciz "System_Linq_Expressions_Expression"

LDIFF_SYM653=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM653
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM654=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM654
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM655=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM655
LTDIE_104:

	.byte 5
	.asciz "System_Linq_Expressions_ParameterExpression"

	.byte 24,16
LDIFF_SYM656=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 2,35,0,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM657=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 2,35,16,0,7
	.asciz "System_Linq_Expressions_ParameterExpression"

LDIFF_SYM658=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM658
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM659=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM659
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM660=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:ViewDidLoad"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad"

	.byte 7,17
	.quad PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM661=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 1,106,11
	.asciz "binding"

LDIFF_SYM662=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM663=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM664=Lfde20_end - Lfde20_start
	.long LDIFF_SYM664
Lfde20_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad

LDIFF_SYM665=Lme_14 - PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
	.long LDIFF_SYM665
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:DidReceiveMemoryWarning"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning"

	.byte 7,28
	.quad PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM666=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM667=Lfde21_end - Lfde21_start
	.long LDIFF_SYM667
Lfde21_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning

LDIFF_SYM668=Lme_15 - PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM668
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:get_TakeImageButton"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton"

	.byte 8,19
	.quad PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM669=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM670=Lfde22_end - Lfde22_start
	.long LDIFF_SYM670
Lfde22_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton

LDIFF_SYM671=Lme_16 - PixelPaint_iOS_Views_SelectImageViewController_get_TakeImageButton
	.long LDIFF_SYM671
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:set_TakeImageButton"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton"

	.byte 8,19
	.quad PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM672=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM673=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM674=Lfde23_end - Lfde23_start
	.long LDIFF_SYM674
Lfde23_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton

LDIFF_SYM675=Lme_17 - PixelPaint_iOS_Views_SelectImageViewController_set_TakeImageButton_UIKit_UIButton
	.long LDIFF_SYM675
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:ReleaseDesignerOutlets"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets"

	.byte 8,22
	.quad PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM676=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM676
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM677=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM677
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM678=Lfde24_end - Lfde24_start
	.long LDIFF_SYM678
Lfde24_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets

LDIFF_SYM679=Lme_18 - PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM679
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_107:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

	.byte 112,16
LDIFF_SYM680=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

LDIFF_SYM681=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM681
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM682=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM682
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM683=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM683
LTDIE_106:

	.byte 5
	.asciz "PixelPaint_iOS_Views_TakeImageViewController"

	.byte 112,16
LDIFF_SYM684=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,35,0,0,7
	.asciz "PixelPaint_iOS_Views_TakeImageViewController"

LDIFF_SYM685=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM685
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM686=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM686
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM687=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2
	.asciz "PixelPaint.iOS.Views.TakeImageViewController:.ctor"
	.asciz "PixelPaint_iOS_Views_TakeImageViewController__ctor"

	.byte 9,10
	.quad PixelPaint_iOS_Views_TakeImageViewController__ctor
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM688=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM689=Lfde25_end - Lfde25_start
	.long LDIFF_SYM689
Lfde25_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_TakeImageViewController__ctor

LDIFF_SYM690=Lme_19 - PixelPaint_iOS_Views_TakeImageViewController__ctor
	.long LDIFF_SYM690
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.TakeImageViewController:ViewDidLoad"
	.asciz "PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad"

	.byte 9,15
	.quad PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM691=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM692=Lfde26_end - Lfde26_start
	.long LDIFF_SYM692
Lfde26_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad

LDIFF_SYM693=Lme_1a - PixelPaint_iOS_Views_TakeImageViewController_ViewDidLoad
	.long LDIFF_SYM693
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.TakeImageViewController:DidReceiveMemoryWarning"
	.asciz "PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning"

	.byte 9,21
	.quad PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM694=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM695=Lfde27_end - Lfde27_start
	.long LDIFF_SYM695
Lfde27_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning

LDIFF_SYM696=Lme_1b - PixelPaint_iOS_Views_TakeImageViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM696
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.TakeImageViewController:ReleaseDesignerOutlets"
	.asciz "PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets"

	.byte 10,18
	.quad PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM697=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM697
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM698=Lfde28_end - Lfde28_start
	.long LDIFF_SYM698
Lfde28_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets

LDIFF_SYM699=Lme_1c - PixelPaint_iOS_Views_TakeImageViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM699
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel/<NavigateToImageTakeController>d__2:.ctor"
	.asciz "PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor"

	.byte 0,0
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM700=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM701=Lfde29_end - Lfde29_start
	.long LDIFF_SYM701
Lfde29_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor

LDIFF_SYM702=Lme_1d - PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2__ctor
	.long LDIFF_SYM702
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel/<NavigateToImageTakeController>d__2:MoveNext"
	.asciz "PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext"

	.byte 2,0
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM703=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM704=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM704
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM705=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM705
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM706=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 3,141,232,0,11
	.asciz "V_3"

LDIFF_SYM707=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM708=Lfde30_end - Lfde30_start
	.long LDIFF_SYM708
Lfde30_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext

LDIFF_SYM709=Lme_1e - PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_MoveNext
	.long LDIFF_SYM709
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,152,22,153,21,68,154,20
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_108:

	.byte 17
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 16,7
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

LDIFF_SYM710=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM710
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM711=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM711
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM712=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel/<NavigateToImageTakeController>d__2:SetStateMachine"
	.asciz "PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM713=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM714=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM715=Lfde31_end - Lfde31_start
	.long LDIFF_SYM715
Lfde31_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM716=Lme_1f - PixelPaint_Models_SelectImageViewModel__NavigateToImageTakeControllerd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM716
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_109:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM717=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM718=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM718
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM719=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM719
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM720=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_REF>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF"

	.byte 11,71
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM721=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM722=Lfde32_end - Lfde32_start
	.long LDIFF_SYM722
Lfde32_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

LDIFF_SYM723=Lme_21 - System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long LDIFF_SYM723
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_Count"
	.asciz "System_Array_InternalArray__ICollection_get_Count"

	.byte 11,61
	.quad System_Array_InternalArray__ICollection_get_Count
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM724=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM724
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM725=Lfde33_end - Lfde33_start
	.long LDIFF_SYM725
Lfde33_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_Count

LDIFF_SYM726=Lme_22 - System_Array_InternalArray__ICollection_get_Count
	.long LDIFF_SYM726
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_IsReadOnly"
	.asciz "System_Array_InternalArray__ICollection_get_IsReadOnly"

	.byte 11,66
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM727=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM728=Lfde34_end - Lfde34_start
	.long LDIFF_SYM728
Lfde34_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

LDIFF_SYM729=Lme_23 - System_Array_InternalArray__ICollection_get_IsReadOnly
	.long LDIFF_SYM729
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Clear"
	.asciz "System_Array_InternalArray__ICollection_Clear"

	.byte 11,79
	.quad System_Array_InternalArray__ICollection_Clear
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM730=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM731=Lfde35_end - Lfde35_start
	.long LDIFF_SYM731
Lfde35_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Clear

LDIFF_SYM732=Lme_24 - System_Array_InternalArray__ICollection_Clear
	.long LDIFF_SYM732
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Add_T_REF_T_REF"

	.byte 11,84
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM733=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM734=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM735=Lfde36_end - Lfde36_start
	.long LDIFF_SYM735
Lfde36_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF

LDIFF_SYM736=Lme_25 - System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.long LDIFF_SYM736
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Remove_T_REF_T_REF"

	.byte 11,89
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM737=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM737
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM738=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM739=Lfde37_end - Lfde37_start
	.long LDIFF_SYM739
Lfde37_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF

LDIFF_SYM740=Lme_26 - System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.long LDIFF_SYM740
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Contains_T_REF_T_REF"

	.byte 11,94
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM741=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM741
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM742=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM742
	.byte 2,141,40,11
	.asciz "length"

LDIFF_SYM743=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM743
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM744=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM744
	.byte 1,104,11
	.asciz "value"

LDIFF_SYM745=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM746=Lfde38_end - Lfde38_start
	.long LDIFF_SYM746
Lfde38_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF

LDIFF_SYM747=Lme_27 - System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.long LDIFF_SYM747
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int"

	.byte 11,119
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM748=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM749=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM749
	.byte 2,141,40,3
	.asciz "arrayIndex"

LDIFF_SYM750=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM750
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM751=Lfde39_end - Lfde39_start
	.long LDIFF_SYM751
Lfde39_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int

LDIFF_SYM752=Lme_28 - System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.long LDIFF_SYM752
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,152,12
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_110:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM753=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM753
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM754=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM754
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM755=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM755
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM756=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM756
LTDIE_112:

	.byte 8
	.asciz "MvvmCross_Binding_MvxBindingMode"

	.byte 4
LDIFF_SYM757=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 9
	.asciz "Default"

	.byte 0,9
	.asciz "TwoWay"

	.byte 1,9
	.asciz "OneWay"

	.byte 2,9
	.asciz "OneTime"

	.byte 3,9
	.asciz "OneWayToSource"

	.byte 4,0,7
	.asciz "MvvmCross_Binding_MvxBindingMode"

LDIFF_SYM758=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM758
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM759=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM759
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM760=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM760
LTDIE_114:

	.byte 17
	.asciz "MvvmCross_Converters_IMvxValueConverter"

	.byte 16,7
	.asciz "MvvmCross_Converters_IMvxValueConverter"

LDIFF_SYM761=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM761
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM762=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM762
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM763=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM763
LTDIE_113:

	.byte 5
	.asciz "MvvmCross_Binding_Bindings_SourceSteps_MvxSourceStepDescription"

	.byte 40,16
LDIFF_SYM764=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2,35,0,6
	.asciz "<Converter>k__BackingField"

LDIFF_SYM765=LTDIE_114_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 2,35,16,6
	.asciz "<ConverterParameter>k__BackingField"

LDIFF_SYM766=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM766
	.byte 2,35,24,6
	.asciz "<FallbackValue>k__BackingField"

LDIFF_SYM767=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 2,35,32,0,7
	.asciz "MvvmCross_Binding_Bindings_SourceSteps_MvxSourceStepDescription"

LDIFF_SYM768=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM768
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM769=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM769
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM770=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM770
LTDIE_111:

	.byte 5
	.asciz "MvvmCross_Binding_Bindings_MvxBindingDescription"

	.byte 40,16
LDIFF_SYM771=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 2,35,0,6
	.asciz "<TargetName>k__BackingField"

LDIFF_SYM772=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 2,35,16,6
	.asciz "<Mode>k__BackingField"

LDIFF_SYM773=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 2,35,32,6
	.asciz "<Source>k__BackingField"

LDIFF_SYM774=LTDIE_113_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 2,35,24,0,7
	.asciz "MvvmCross_Binding_Bindings_MvxBindingDescription"

LDIFF_SYM775=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM775
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM776=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM776
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM777=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<MvvmCross.Binding.Bindings.MvxBindingDescription>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM778=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM779=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM780=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM780
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM781=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM781
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM782=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM783=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM784=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM784
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM785=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM785
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM786=Lfde40_end - Lfde40_start
	.long LDIFF_SYM786
Lfde40_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription

LDIFF_SYM787=Lme_29 - wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_bool_T_MvvmCross_Binding_Bindings_MvxBindingDescription
	.long LDIFF_SYM787
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_115:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM788=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM789=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM789
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM790=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM790
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM791=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<MvvmCross.Binding.Bindings.MvxBindingDescription>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM792=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM793=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM794=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM795=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM795
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM796=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM796
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM797=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM797
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM798=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM799=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM800=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM800
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM801=Lfde41_end - Lfde41_start
	.long LDIFF_SYM801
Lfde41_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription

LDIFF_SYM802=Lme_2a - wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Binding_Bindings_MvxBindingDescription_invoke_int_T_T_MvvmCross_Binding_Bindings_MvxBindingDescription_MvvmCross_Binding_Bindings_MvxBindingDescription
	.long LDIFF_SYM802
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_116:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM803=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM803
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM804=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM804
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM805=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM805
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM806=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM806
LTDIE_117:

	.byte 17
	.asciz "MvvmCross_Base_IMvxApplicable"

	.byte 16,7
	.asciz "MvvmCross_Base_IMvxApplicable"

LDIFF_SYM807=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM807
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM808=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM808
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM809=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<MvvmCross.Base.IMvxApplicable>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM810=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM810
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM811=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM811
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM812=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM812
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM813=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM814=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM815=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM815
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM816=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM816
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM817=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM817
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM818=Lfde42_end - Lfde42_start
	.long LDIFF_SYM818
Lfde42_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable

LDIFF_SYM819=Lme_2b - wrapper_delegate_invoke_System_Predicate_1_MvvmCross_Base_IMvxApplicable_invoke_bool_T_MvvmCross_Base_IMvxApplicable
	.long LDIFF_SYM819
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_118:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM820=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM821=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM821
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM822=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM822
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM823=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<MvvmCross.Base.IMvxApplicable>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM824=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM825=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM825
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM826=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM827=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM828=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM829=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM830=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM831=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM831
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM832=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM833=Lfde43_end - Lfde43_start
	.long LDIFF_SYM833
Lfde43_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable

LDIFF_SYM834=Lme_2c - wrapper_delegate_invoke_System_Comparison_1_MvvmCross_Base_IMvxApplicable_invoke_int_T_T_MvvmCross_Base_IMvxApplicable_MvvmCross_Base_IMvxApplicable
	.long LDIFF_SYM834
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_119:

	.byte 5
	.asciz "System_Runtime_CompilerServices_AsyncVoidMethodBuilder"

	.byte 48,16
LDIFF_SYM835=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM835
	.byte 2,35,0,6
	.asciz "m_synchronizationContext"

LDIFF_SYM836=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM836
	.byte 2,35,0,6
	.asciz "m_coreState"

LDIFF_SYM837=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM837
	.byte 2,35,8,6
	.asciz "m_task"

LDIFF_SYM838=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 2,35,24,0,7
	.asciz "System_Runtime_CompilerServices_AsyncVoidMethodBuilder"

LDIFF_SYM839=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM839
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM840=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM840
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM841=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM841
LTDIE_120:

	.byte 5
	.asciz "_MoveNextRunner"

	.byte 32,16
LDIFF_SYM842=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM842
	.byte 2,35,0,6
	.asciz "m_context"

LDIFF_SYM843=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,35,16,6
	.asciz "m_stateMachine"

LDIFF_SYM844=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 2,35,24,0,7
	.asciz "_MoveNextRunner"

LDIFF_SYM845=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM845
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM846=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM846
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM847=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_121:

	.byte 5
	.asciz "System_Action"

	.byte 112,16
LDIFF_SYM848=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM848
	.byte 2,35,0,0,7
	.asciz "System_Action"

LDIFF_SYM849=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM849
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM850=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM850
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM851=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncVoidMethodBuilder:AwaitUnsafeOnCompleted<TAwaiter_GSHAREDVT,_TStateMachine_GSHAREDVT>"
	.asciz "System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_"

	.byte 12,161,1
	.quad System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM852=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM852
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM853=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM853
	.byte 3,141,208,0,3
	.asciz "stateMachine"

LDIFF_SYM854=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM854
	.byte 3,141,216,0,11
	.asciz "runnerToInitialize"

LDIFF_SYM855=LTDIE_120_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM855
	.byte 3,141,128,1,11
	.asciz "continuation"

LDIFF_SYM856=LTDIE_121_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM857=Lfde44_end - Lfde44_start
	.long LDIFF_SYM857
Lfde44_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_

LDIFF_SYM858=Lme_2d - System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
	.long LDIFF_SYM858
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,147,30,148,29,68,149,28,150,27,68,151,26,152,25,68,153,24
	.byte 154,23
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_122:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM859=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM859
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM860=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM860
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM861=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM861
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM862=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM862
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM863=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM863
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM864=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_REF>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_REF__ctor_System_Array"

	.byte 11,218,1
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM865=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM865
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM866=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM866
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM867=Lfde45_end - Lfde45_start
	.long LDIFF_SYM867
Lfde45_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

LDIFF_SYM868=Lme_2e - System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long LDIFF_SYM868
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:

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
.loc 1 10 0 prologue_end
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
.loc 1 11 0
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
.loc 1 12 0
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
	.no_dead_strip PixelPaint_Models_SelectImageViewModel__ctor
PixelPaint_Models_SelectImageViewModel__ctor:
.file 2 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/PixelPaint/Models/SelectImageViewModel.cs"
.loc 2 8 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #224]
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
bl _p_3
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.loc 2 9 0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 2 10 0
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

Lme_2:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView:
.file 3 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/ViewModels/SelectImage/SelectImageDataSource.cs"
.loc 3 10 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #232]
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
bl _p_4
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 3 11 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 3 12 0
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_5
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
.word 0xf9416050
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 3 13 0
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

Lme_3:
.text
	.align 4
	.no_dead_strip PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object:
.loc 3 16 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #240]
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
.loc 3 17 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #248]
bl _p_6
.word 0xf9002ba0
bl _p_7
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003fa
.loc 3 18 0
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

Lme_4:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Application_Main_string__
PixelPaint_iOS_Application_Main_string__:
.file 4 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Main.cs"
.loc 4 14 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #256]
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
.loc 4 17 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd2800001

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x2, [x16, #264]
.word 0xd2800001
bl _p_8
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 4 18 0
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

Lme_5:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Application__ctor
PixelPaint_iOS_Application__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #272]
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

Lme_6:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_get_Window
PixelPaint_iOS_AppDelegate_get_Window:
.file 5 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/AppDelegate.cs"
.loc 5 16 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #280]
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

Lme_7:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow:
.loc 5 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #288]
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

Lme_8:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
.loc 5 21 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #296]
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
.loc 5 22 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
bl _p_9
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x53001c00
.word 0xaa0003f7
.loc 5 24 0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x53001ee0
.word 0xaa0003f6
.loc 5 25 0
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

Lme_9:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication:
.loc 5 28 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #304]
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
.loc 5 33 0
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

Lme_a:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication:
.loc 5 36 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #312]
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
.loc 5 39 0
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

Lme_b:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication:
.loc 5 42 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #320]
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
.loc 5 45 0
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

Lme_c:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication:
.loc 5 48 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #328]
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
.loc 5 51 0
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
	.no_dead_strip PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication:
.loc 5 54 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #336]
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
.loc 5 56 0
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
	.no_dead_strip PixelPaint_iOS_AppDelegate__ctor
PixelPaint_iOS_AppDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #344]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_10
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

Lme_f:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController__ctor
PixelPaint_iOS_Views_SelectImageViewController__ctor:
.file 6 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/SelectImageViewController.cs"
.loc 6 13 0 prologue_end
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
ldr x1, [x16, #360]
.word 0xd2800002
.word 0xd2800002
bl _p_11
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 6 14 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 6 15 0
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

Lme_10:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad:
.loc 6 18 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 6 19 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_12
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 6 21 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_13
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x0, [x16, #376]
bl _p_6
.word 0xf94027a1
.word 0xf90023a0
bl _p_14
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9003b40
.word 0x9101c341
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
.loc 6 22 0
.word 0xf9400fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_13
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa2
.word 0xaa1a03e0
.word 0xf9403b41
.word 0xaa0203e0
.word 0xf940005e
bl _p_15
.word 0xf9400fb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.loc 6 23 0
.word 0xf9400fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_13
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9416c30
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.loc 6 24 0
.word 0xf9400fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning:
.loc 6 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #384]
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
.loc 6 28 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 6 30 0
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

Lme_12:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView
PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView:
.file 7 "/Users/nikolaiko/Projects/iOS-Developer/Xamarin/PixelPaint/iOS/Views/SelectImageViewController.designer.cs"
.loc 7 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #392]
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
.word 0xf9403c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView
PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView:
.loc 7 19 0 prologue_end
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
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9003c20
.word 0x9101e021
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

Lme_14:
.text
	.align 4
	.no_dead_strip PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets:
.loc 7 22 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #408]
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
.loc 7 23 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_13
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
.loc 7 24 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_13
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_17
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 25 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_18
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 26 0
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 27 0
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

Lme_15:
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
bl PixelPaint_Models_SelectImageViewModel__ctor
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
bl PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView
bl PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView
bl PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,16
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10,13,12,31,0,68,14,64,157,8,158,7,68,13,29,18,12
	.byte 31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68
	.byte 154,8,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7

.text
	.align 4
plt:
mono_aot_PixelPaint_iOS_plt:
	.no_dead_strip plt_MvvmCross_ViewModels_MvxApplication_RegisterAppStart_PixelPaint_Models_SelectImageViewModel
plt_MvvmCross_ViewModels_MvxApplication_RegisterAppStart_PixelPaint_Models_SelectImageViewModel:
_p_1:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #424]
br x16
.word 402
	.no_dead_strip plt_MvvmCross_ViewModels_MvxApplication__ctor
plt_MvvmCross_ViewModels_MvxApplication__ctor:
_p_2:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #432]
br x16
.word 414
	.no_dead_strip plt_MvvmCross_ViewModels_MvxViewModel__ctor
plt_MvvmCross_ViewModels_MvxViewModel__ctor:
_p_3:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #440]
br x16
.word 419
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource__ctor_UIKit_UITableView
plt_MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource__ctor_UIKit_UITableView:
_p_4:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #448]
br x16
.word 424
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource_get_TableView
plt_MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource_get_TableView:
_p_5:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #456]
br x16
.word 429
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_6:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #464]
br x16
.word 434
	.no_dead_strip plt_UIKit_UITableViewCell__ctor
plt_UIKit_UITableViewCell__ctor:
_p_7:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #472]
br x16
.word 466
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_8:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #480]
br x16
.word 471
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
_p_9:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #488]
br x16
.word 476
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_2_MvvmCross_Platforms_Ios_Core_MvxIosSetup_1_PixelPaint_App_PixelPaint_App__ctor
plt_MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate_2_MvvmCross_Platforms_Ios_Core_MvxIosSetup_1_PixelPaint_App_PixelPaint_App__ctor:
_p_10:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #496]
br x16
.word 481
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_SelectImageViewModel__ctor_string_Foundation_NSBundle
plt_MvvmCross_Platforms_Ios_Views_MvxViewController_1_PixelPaint_Models_SelectImageViewModel__ctor_string_Foundation_NSBundle:
_p_11:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #504]
br x16
.word 492
	.no_dead_strip plt_MvvmCross_Platforms_Ios_Views_MvxViewController_ViewDidLoad
plt_MvvmCross_Platforms_Ios_Views_MvxViewController_ViewDidLoad:
_p_12:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #512]
br x16
.word 503
	.no_dead_strip plt_PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView
plt_PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView:
_p_13:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #520]
br x16
.word 508
	.no_dead_strip plt_PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
plt_PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView:
_p_14:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 510
	.no_dead_strip plt_UIKit_UITableView_set_Source_UIKit_UITableViewSource
plt_UIKit_UITableView_set_Source_UIKit_UITableViewSource:
_p_15:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 512
	.no_dead_strip plt_UIKit_UIViewController_DidReceiveMemoryWarning
plt_UIKit_UIViewController_DidReceiveMemoryWarning:
_p_16:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 517
	.no_dead_strip plt_Foundation_NSObject_Dispose
plt_Foundation_NSObject_Dispose:
_p_17:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 522
	.no_dead_strip plt_PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView
plt_PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView:
_p_18:
adrp x16, mono_aot_PixelPaint_iOS_got@PAGE+0
add x16, x16, mono_aot_PixelPaint_iOS_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 527
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_PixelPaint_iOS_got, 568
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "8A596CBE-684F-4196-85A5-26D9BC50BCD9"
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

	.long 52,568,19,23,70,391195135,0,2556
	.long 128,8,8,9,0,25,3352,784
	.long 440,208,0,352,408,264,0,200
	.long 56,776,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
	.byte 153,179,54,55,230,56,160,239,196,85,68,97,77,192,167,184
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

LDIFF_SYM3=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_3:

	.byte 17
	.asciz "MvvmCross_ViewModels_IMvxViewModelLocator"

	.byte 16,7
	.asciz "MvvmCross_ViewModels_IMvxViewModelLocator"

LDIFF_SYM6=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM7=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_1:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxApplication"

	.byte 24,16
LDIFF_SYM9=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2,35,0,6
	.asciz "_defaultLocator"

LDIFF_SYM10=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,16,0,7
	.asciz "MvvmCross_ViewModels_MvxApplication"

LDIFF_SYM11=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM12=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM13=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_0:

	.byte 5
	.asciz "PixelPaint_App"

	.byte 24,16
LDIFF_SYM14=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,0,0,7
	.asciz "PixelPaint_App"

LDIFF_SYM15=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM16=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM17=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2
	.asciz "PixelPaint.App:Initialize"
	.asciz "PixelPaint_App_Initialize"

	.byte 1,10
	.quad PixelPaint_App_Initialize
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM18=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM19=Lfde0_end - Lfde0_start
	.long LDIFF_SYM19
Lfde0_start:

	.long 0
	.align 3
	.quad PixelPaint_App_Initialize

LDIFF_SYM20=Lme_0 - PixelPaint_App_Initialize
	.long LDIFF_SYM20
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

LDIFF_SYM21=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM22=Lfde1_end - Lfde1_start
	.long LDIFF_SYM22
Lfde1_start:

	.long 0
	.align 3
	.quad PixelPaint_App__ctor

LDIFF_SYM23=Lme_1 - PixelPaint_App__ctor
	.long LDIFF_SYM23
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 5
	.asciz "MvvmCross_Base_MvxMainThreadDispatchingObject"

	.byte 16,16
LDIFF_SYM24=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Base_MvxMainThreadDispatchingObject"

LDIFF_SYM25=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_13:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM28=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM29=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM30=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM31=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_12:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM32=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM33=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_11:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM36=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM37=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM38=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM39=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_15:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM40=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM41=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM42=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_17:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM45=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM46=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_16:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM49=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM50=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM51=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM52=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM53=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_14:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM54=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM55=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM56=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM57=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM58=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM59=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM60=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_10:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM61=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM62=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM63=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM64=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM65=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM66=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM67=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM68=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM69=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM70=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM71=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM72=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM73=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_9:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM76=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM77=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM78=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM79=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM80=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_8:

	.byte 5
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

	.byte 112,16
LDIFF_SYM81=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,0,0,7
	.asciz "System_ComponentModel_PropertyChangedEventHandler"

LDIFF_SYM82=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM83=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM84=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_6:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxNotifyPropertyChanged"

	.byte 32,16
LDIFF_SYM85=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,0,6
	.asciz "PropertyChanged"

LDIFF_SYM86=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,16,6
	.asciz "_shouldAlwaysRaiseInpcOnUserInterfaceThread"

LDIFF_SYM87=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,24,0,7
	.asciz "MvvmCross_ViewModels_MvxNotifyPropertyChanged"

LDIFF_SYM88=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM89=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM90=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_18:

	.byte 17
	.asciz "MvvmCross_Logging_IMvxLog"

	.byte 16,7
	.asciz "MvvmCross_Logging_IMvxLog"

LDIFF_SYM91=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM92=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM93=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_19:

	.byte 17
	.asciz "MvvmCross_Navigation_IMvxNavigationService"

	.byte 16,7
	.asciz "MvvmCross_Navigation_IMvxNavigationService"

LDIFF_SYM94=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM95=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM96=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_20:

	.byte 17
	.asciz "MvvmCross_Logging_IMvxLogProvider"

	.byte 16,7
	.asciz "MvvmCross_Logging_IMvxLogProvider"

LDIFF_SYM97=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM98=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM99=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_22:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM100=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM101=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM102=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM103=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_24:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM104=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM105=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM106=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM107=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM108=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_25:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM109=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM110=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM111=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM112=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM113=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_28:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 16,16
LDIFF_SYM114=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM115=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM116=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM117=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_31:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM118=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM119=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM120=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM121=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM122=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_32:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM123=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM124=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM125=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_30:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 64,16
LDIFF_SYM126=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM127=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM128=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,40,6
	.asciz "occupancy"

LDIFF_SYM129=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,44,6
	.asciz "loadsize"

LDIFF_SYM130=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,48,6
	.asciz "loadFactor"

LDIFF_SYM131=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,52,6
	.asciz "version"

LDIFF_SYM132=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,56,6
	.asciz "isWriterInProgress"

LDIFF_SYM133=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,60,6
	.asciz "_keycomparer"

LDIFF_SYM134=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM135=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,32,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM136=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM136
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM137=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM138=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_33:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM139=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM140=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM141=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM142=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_34:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM143=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM144=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM145=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM146=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_29:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM147=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM148=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM149=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM150=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM151=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM152=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM153=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM154=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM155=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_35:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM156=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM157=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM158=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM159=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_36:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM160
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

LDIFF_SYM161=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM162=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM162
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM163=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM163
LTDIE_38:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM164=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM165=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM166=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_39:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM167=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM168=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM169=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM170=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM170
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM171=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM171
LTDIE_40:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM172=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM173=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM174=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM175=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM176=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_37:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 72,16
LDIFF_SYM177=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM178=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM179=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM180=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,56,6
	.asciz "_freeList"

LDIFF_SYM181=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,60,6
	.asciz "_freeCount"

LDIFF_SYM182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,64,6
	.asciz "_version"

LDIFF_SYM183=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,68,6
	.asciz "_comparer"

LDIFF_SYM184=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM185=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM186=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,48,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM187=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM188=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM189=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_41:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM190=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM191=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM192=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM193=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM194=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM195=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM195
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM196=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_27:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM197=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM198=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM199=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM200=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM201=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM202=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM203=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM204=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM205=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM206=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM207=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_46:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM208=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM209=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM210=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM211=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM212=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_50:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM213=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM214=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM215=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM216=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_49:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM217=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM218=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM219=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM220=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM221=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM222=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM223=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM224=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM224
LTDIE_48:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM225=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM226=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM227=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM228=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_47:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM229=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM230=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM231=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM232=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_45:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 48,16
LDIFF_SYM233=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM234=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,24,6
	.asciz "safeWaitHandle"

LDIFF_SYM235=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,32,6
	.asciz "hasThreadAffinity"

LDIFF_SYM236=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,40,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM237=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM238=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM239=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_44:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 48,16
LDIFF_SYM240=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM241=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM242=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM243=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_43:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 48,16
LDIFF_SYM244=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM245=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM246=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM247=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_42:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM248=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM249=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM250=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM251=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM252=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM253=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM254=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_52:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM255=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM256=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM257=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM259=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM259
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM260=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM260
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM261=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM261
LTDIE_55:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM262=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM262
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM263=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM263
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM264=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM264
LTDIE_57:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM265=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM265
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM266=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM267=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_56:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 32,16
LDIFF_SYM268=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM269=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,16,6
	.asciz "m_realObject"

LDIFF_SYM270=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM271=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM272=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM273=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM273
LTDIE_54:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM274=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM275=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM276=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM277=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM278=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM279=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM280=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM281=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM282=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM283=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM284=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM285=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM286=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM287=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM288=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM289=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM290=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM290
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM291=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM292=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_53:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM293=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM294=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM295=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM296=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM296
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM297=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM297
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM298=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_51:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM299=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM300=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM301=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM302=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM303=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM304=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM304
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM305=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM306=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_58:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM307=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM308=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM309=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM309
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM310=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM311=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_59:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 32,16
LDIFF_SYM312=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM313=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM314=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM316=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM317=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM318=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM318
LTDIE_26:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM319=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM320=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM321=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM322=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM323=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM324=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM325=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM327=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM328=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM328
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM329=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM329
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM330=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_23:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM331=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM332=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM333=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM334=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM335=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM336=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM337=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM338=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM339=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM340=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM341=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM342=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_21:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxNotifyTask"

	.byte 48,16
LDIFF_SYM343=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,0,6
	.asciz "_onException"

LDIFF_SYM344=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,16,6
	.asciz "<Task>k__BackingField"

LDIFF_SYM345=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,24,6
	.asciz "<TaskCompleted>k__BackingField"

LDIFF_SYM346=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,32,6
	.asciz "PropertyChanged"

LDIFF_SYM347=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,40,0,7
	.asciz "MvvmCross_ViewModels_MvxNotifyTask"

LDIFF_SYM348=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM348
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM349=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM350=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_5:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxViewModel"

	.byte 64,16
LDIFF_SYM351=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,0,6
	.asciz "_log"

LDIFF_SYM352=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,32,6
	.asciz "<NavigationService>k__BackingField"

LDIFF_SYM353=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,40,6
	.asciz "<LogProvider>k__BackingField"

LDIFF_SYM354=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,48,6
	.asciz "_initializeTask"

LDIFF_SYM355=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,56,0,7
	.asciz "MvvmCross_ViewModels_MvxViewModel"

LDIFF_SYM356=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM356
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM357=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM357
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM358=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM358
LTDIE_4:

	.byte 5
	.asciz "PixelPaint_Models_SelectImageViewModel"

	.byte 64,16
LDIFF_SYM359=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,0,0,7
	.asciz "PixelPaint_Models_SelectImageViewModel"

LDIFF_SYM360=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM361=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM361
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM362=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2
	.asciz "PixelPaint.Models.SelectImageViewModel:.ctor"
	.asciz "PixelPaint_Models_SelectImageViewModel__ctor"

	.byte 2,8
	.quad PixelPaint_Models_SelectImageViewModel__ctor
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM363=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM364=Lfde2_end - Lfde2_start
	.long LDIFF_SYM364
Lfde2_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImageViewModel__ctor

LDIFF_SYM365=Lme_2 - PixelPaint_Models_SelectImageViewModel__ctor
	.long LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_66:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM366=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM366
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

LDIFF_SYM367=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM368=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM368
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM369=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM369
LTDIE_65:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM370=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM371=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM372=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM373=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM374=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM374
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM375=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM376=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM376
LTDIE_64:

	.byte 5
	.asciz "UIKit_UIScrollViewDelegate"

	.byte 40,16
LDIFF_SYM377=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,35,0,0,7
	.asciz "UIKit_UIScrollViewDelegate"

LDIFF_SYM378=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM378
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM379=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM379
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM380=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM380
LTDIE_63:

	.byte 5
	.asciz "UIKit_UITableViewSource"

	.byte 40,16
LDIFF_SYM381=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,35,0,0,7
	.asciz "UIKit_UITableViewSource"

LDIFF_SYM382=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM382
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM383=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM383
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM384=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM384
LTDIE_70:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM385=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM386=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM387=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM387
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM388=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_69:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 40,16
LDIFF_SYM389=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,35,0,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM390=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM391=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM391
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM392=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM392
LTDIE_68:

	.byte 5
	.asciz "UIKit_UIScrollView"

	.byte 48,16
LDIFF_SYM393=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,0,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM394=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,40,0,7
	.asciz "UIKit_UIScrollView"

LDIFF_SYM395=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM395
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM396=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM396
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM397=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM397
LTDIE_67:

	.byte 5
	.asciz "UIKit_UITableView"

	.byte 64,16
LDIFF_SYM398=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,0,6
	.asciz "__mt_WeakDataSource_var"

LDIFF_SYM399=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,35,48,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM400=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,35,56,0,7
	.asciz "UIKit_UITableView"

LDIFF_SYM401=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM401
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM402=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM402
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM403=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM403
LTDIE_71:

	.byte 17
	.asciz "System_Windows_Input_ICommand"

	.byte 16,7
	.asciz "System_Windows_Input_ICommand"

LDIFF_SYM404=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM404
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM405=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM406=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_72:

	.byte 5
	.asciz "System_EventHandler"

	.byte 112,16
LDIFF_SYM407=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM408=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM408
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM409=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM409
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM410=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_62:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource"

	.byte 88,16
LDIFF_SYM411=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2,35,0,6
	.asciz "_tableView"

LDIFF_SYM412=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2,35,40,6
	.asciz "<DeselectAutomatically>k__BackingField"

LDIFF_SYM413=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,80,6
	.asciz "<SelectionChangedCommand>k__BackingField"

LDIFF_SYM414=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,48,6
	.asciz "<AccessoryTappedCommand>k__BackingField"

LDIFF_SYM415=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,56,6
	.asciz "_selectedItem"

LDIFF_SYM416=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,35,64,6
	.asciz "SelectedItemChanged"

LDIFF_SYM417=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM417
	.byte 2,35,72,0,7
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxBaseTableViewSource"

LDIFF_SYM418=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM419=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM420=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM420
LTDIE_73:

	.byte 17
	.asciz "System_Collections_IEnumerable"

	.byte 16,7
	.asciz "System_Collections_IEnumerable"

LDIFF_SYM421=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM421
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM422=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM423=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_74:

	.byte 17
	.asciz "System_IDisposable"

	.byte 16,7
	.asciz "System_IDisposable"

LDIFF_SYM424=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM424
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM425=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM425
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM426=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM426
LTDIE_75:

	.byte 8
	.asciz "UIKit_UITableViewRowAnimation"

	.byte 8
LDIFF_SYM427=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM427
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

LDIFF_SYM428=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM428
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM429=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM429
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM430=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_61:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource"

	.byte 136,1,16
LDIFF_SYM431=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2,35,0,6
	.asciz "_itemsSource"

LDIFF_SYM432=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,35,88,6
	.asciz "_subscription"

LDIFF_SYM433=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,96,6
	.asciz "<ReloadOnAllItemsSourceSets>k__BackingField"

LDIFF_SYM434=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,104,6
	.asciz "<UseAnimations>k__BackingField"

LDIFF_SYM435=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,105,6
	.asciz "<AddAnimation>k__BackingField"

LDIFF_SYM436=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,112,6
	.asciz "<RemoveAnimation>k__BackingField"

LDIFF_SYM437=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,120,6
	.asciz "<ReplaceAnimation>k__BackingField"

LDIFF_SYM438=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 3,35,128,1,0,7
	.asciz "MvvmCross_Platforms_Ios_Binding_Views_MvxTableViewSource"

LDIFF_SYM439=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM439
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM440=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM440
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM441=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_60:

	.byte 5
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource"

	.byte 136,1,16
LDIFF_SYM442=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,0,0,7
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource"

LDIFF_SYM443=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM444=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM444
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM445=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2
	.asciz "PixelPaint.Models.SelectImage.SelectImageDataSource:.ctor"
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView"

	.byte 3,10
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM446=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 1,105,3
	.asciz "table"

LDIFF_SYM447=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM448=Lfde3_end - Lfde3_start
	.long LDIFF_SYM448
Lfde3_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView

LDIFF_SYM449=Lme_3 - PixelPaint_Models_SelectImage_SelectImageDataSource__ctor_UIKit_UITableView
	.long LDIFF_SYM449
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_76:

	.byte 5
	.asciz "Foundation_NSIndexPath"

	.byte 40,16
LDIFF_SYM450=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,0,0,7
	.asciz "Foundation_NSIndexPath"

LDIFF_SYM451=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM452=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM452
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM453=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_77:

	.byte 5
	.asciz "UIKit_UITableViewCell"

	.byte 40,16
LDIFF_SYM454=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,0,0,7
	.asciz "UIKit_UITableViewCell"

LDIFF_SYM455=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM456=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM457=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2
	.asciz "PixelPaint.Models.SelectImage.SelectImageDataSource:GetOrCreateCellFor"
	.asciz "PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object"

	.byte 3,16
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM458=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,141,24,3
	.asciz "tableView"

LDIFF_SYM459=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,141,32,3
	.asciz "indexPath"

LDIFF_SYM460=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,141,40,3
	.asciz "item"

LDIFF_SYM461=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM462=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM463=Lfde4_end - Lfde4_start
	.long LDIFF_SYM463
Lfde4_start:

	.long 0
	.align 3
	.quad PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object

LDIFF_SYM464=Lme_4 - PixelPaint_Models_SelectImage_SelectImageDataSource_GetOrCreateCellFor_UIKit_UITableView_Foundation_NSIndexPath_object
	.long LDIFF_SYM464
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Application:Main"
	.asciz "PixelPaint_iOS_Application_Main_string__"

	.byte 4,14
	.quad PixelPaint_iOS_Application_Main_string__
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM465=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM466=Lfde5_end - Lfde5_start
	.long LDIFF_SYM466
Lfde5_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Application_Main_string__

LDIFF_SYM467=Lme_5 - PixelPaint_iOS_Application_Main_string__
	.long LDIFF_SYM467
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_78:

	.byte 5
	.asciz "PixelPaint_iOS_Application"

	.byte 16,16
LDIFF_SYM468=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 2,35,0,0,7
	.asciz "PixelPaint_iOS_Application"

LDIFF_SYM469=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM469
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM470=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM471=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2
	.asciz "PixelPaint.iOS.Application:.ctor"
	.asciz "PixelPaint_iOS_Application__ctor"

	.byte 0,0
	.quad PixelPaint_iOS_Application__ctor
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM472=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM473=Lfde6_end - Lfde6_start
	.long LDIFF_SYM473
Lfde6_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Application__ctor

LDIFF_SYM474=Lme_6 - PixelPaint_iOS_Application__ctor
	.long LDIFF_SYM474
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_82:

	.byte 5
	.asciz "UIKit_UIApplicationDelegate"

	.byte 40,16
LDIFF_SYM475=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplicationDelegate"

LDIFF_SYM476=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM477=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM478=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM478
LTDIE_83:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM479=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM480=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM480
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM481=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM482=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_84:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM483=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM484=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM484
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM485=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM485
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM486=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM486
LTDIE_81:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate"

	.byte 56,16
LDIFF_SYM487=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM488=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,35,40,6
	.asciz "LifetimeChanged"

LDIFF_SYM489=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,35,48,0,7
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate"

LDIFF_SYM490=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM490
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM491=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM491
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM492=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM492
LTDIE_80:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate`2"

	.byte 56,16
LDIFF_SYM493=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platforms_Ios_Core_MvxApplicationDelegate`2"

LDIFF_SYM494=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM494
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM495=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM495
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM496=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM496
LTDIE_79:

	.byte 5
	.asciz "PixelPaint_iOS_AppDelegate"

	.byte 64,16
LDIFF_SYM497=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,0,6
	.asciz "<Window>k__BackingField"

LDIFF_SYM498=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,56,0,7
	.asciz "PixelPaint_iOS_AppDelegate"

LDIFF_SYM499=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM499
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM500=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM500
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM501=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:get_Window"
	.asciz "PixelPaint_iOS_AppDelegate_get_Window"

	.byte 5,16
	.quad PixelPaint_iOS_AppDelegate_get_Window
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM502=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM503=Lfde7_end - Lfde7_start
	.long LDIFF_SYM503
Lfde7_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_get_Window

LDIFF_SYM504=Lme_7 - PixelPaint_iOS_AppDelegate_get_Window
	.long LDIFF_SYM504
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:set_Window"
	.asciz "PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow"

	.byte 5,17
	.quad PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM505=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM506=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM507=Lfde8_end - Lfde8_start
	.long LDIFF_SYM507
Lfde8_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow

LDIFF_SYM508=Lme_8 - PixelPaint_iOS_AppDelegate_set_Window_UIKit_UIWindow
	.long LDIFF_SYM508
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_85:

	.byte 5
	.asciz "UIKit_UIApplication"

	.byte 40,16
LDIFF_SYM509=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplication"

LDIFF_SYM510=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM510
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM511=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM511
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM512=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM512
LTDIE_86:

	.byte 5
	.asciz "Foundation_NSDictionary"

	.byte 40,16
LDIFF_SYM513=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,35,0,0,7
	.asciz "Foundation_NSDictionary"

LDIFF_SYM514=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM514
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM515=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM515
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM516=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:FinishedLaunching"
	.asciz "PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary"

	.byte 5,21
	.quad PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM517=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,141,32,3
	.asciz "application"

LDIFF_SYM518=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 2,141,40,3
	.asciz "launchOptions"

LDIFF_SYM519=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM519
	.byte 2,141,48,11
	.asciz "result"

LDIFF_SYM520=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM520
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM521=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM522=Lfde9_end - Lfde9_start
	.long LDIFF_SYM522
Lfde9_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary

LDIFF_SYM523=Lme_9 - PixelPaint_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
	.long LDIFF_SYM523
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:OnResignActivation"
	.asciz "PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication"

	.byte 5,28
	.quad PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM524=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM525=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM526=Lfde10_end - Lfde10_start
	.long LDIFF_SYM526
Lfde10_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication

LDIFF_SYM527=Lme_a - PixelPaint_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
	.long LDIFF_SYM527
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:DidEnterBackground"
	.asciz "PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication"

	.byte 5,36
	.quad PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM528=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM529=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM530=Lfde11_end - Lfde11_start
	.long LDIFF_SYM530
Lfde11_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication

LDIFF_SYM531=Lme_b - PixelPaint_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
	.long LDIFF_SYM531
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:WillEnterForeground"
	.asciz "PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication"

	.byte 5,42
	.quad PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM532=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM533=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM534=Lfde12_end - Lfde12_start
	.long LDIFF_SYM534
Lfde12_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication

LDIFF_SYM535=Lme_c - PixelPaint_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
	.long LDIFF_SYM535
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:OnActivated"
	.asciz "PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication"

	.byte 5,48
	.quad PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM536=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM537=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM538=Lfde13_end - Lfde13_start
	.long LDIFF_SYM538
Lfde13_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication

LDIFF_SYM539=Lme_d - PixelPaint_iOS_AppDelegate_OnActivated_UIKit_UIApplication
	.long LDIFF_SYM539
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:WillTerminate"
	.asciz "PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication"

	.byte 5,54
	.quad PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM540=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,141,16,3
	.asciz "application"

LDIFF_SYM541=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM542=Lfde14_end - Lfde14_start
	.long LDIFF_SYM542
Lfde14_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication

LDIFF_SYM543=Lme_e - PixelPaint_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
	.long LDIFF_SYM543
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.AppDelegate:.ctor"
	.asciz "PixelPaint_iOS_AppDelegate__ctor"

	.byte 0,0
	.quad PixelPaint_iOS_AppDelegate__ctor
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM544=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM545=Lfde15_end - Lfde15_start
	.long LDIFF_SYM545
Lfde15_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_AppDelegate__ctor

LDIFF_SYM546=Lme_f - PixelPaint_iOS_AppDelegate__ctor
	.long LDIFF_SYM546
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_91:

	.byte 5
	.asciz "UIKit_UIViewController"

	.byte 40,16
LDIFF_SYM547=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,0,0,7
	.asciz "UIKit_UIViewController"

LDIFF_SYM548=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM548
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM549=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM549
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM550=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_92:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM551=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM552=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM552
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM553=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM553
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM554=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_90:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_Base_MvxEventSourceViewController"

	.byte 96,16
LDIFF_SYM555=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 2,35,0,6
	.asciz "ViewDidLoadCalled"

LDIFF_SYM556=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,35,40,6
	.asciz "ViewDidLayoutSubviewsCalled"

LDIFF_SYM557=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,48,6
	.asciz "ViewWillAppearCalled"

LDIFF_SYM558=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,35,56,6
	.asciz "ViewDidAppearCalled"

LDIFF_SYM559=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,64,6
	.asciz "ViewDidDisappearCalled"

LDIFF_SYM560=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,35,72,6
	.asciz "ViewWillDisappearCalled"

LDIFF_SYM561=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 2,35,80,6
	.asciz "DisposeCalled"

LDIFF_SYM562=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 2,35,88,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_Base_MvxEventSourceViewController"

LDIFF_SYM563=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM564=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM564
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM565=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM565
LTDIE_94:

	.byte 17
	.asciz "System_Collections_Generic_IDictionary`2"

	.byte 16,7
	.asciz "System_Collections_Generic_IDictionary`2"

LDIFF_SYM566=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM566
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM567=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM567
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM568=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM568
LTDIE_93:

	.byte 5
	.asciz "MvvmCross_ViewModels_MvxViewModelRequest"

	.byte 40,16
LDIFF_SYM569=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,35,0,6
	.asciz "<ViewModelType>k__BackingField"

LDIFF_SYM570=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,35,16,6
	.asciz "<ParameterValues>k__BackingField"

LDIFF_SYM571=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 2,35,24,6
	.asciz "<PresentationValues>k__BackingField"

LDIFF_SYM572=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,32,0,7
	.asciz "MvvmCross_ViewModels_MvxViewModelRequest"

LDIFF_SYM573=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM574=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM575=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_95:

	.byte 17
	.asciz "MvvmCross_Binding_BindingContext_IMvxBindingContext"

	.byte 16,7
	.asciz "MvvmCross_Binding_BindingContext_IMvxBindingContext"

LDIFF_SYM576=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM576
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM577=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM578=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_89:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController"

	.byte 112,16
LDIFF_SYM579=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM579
	.byte 2,35,0,6
	.asciz "<Request>k__BackingField"

LDIFF_SYM580=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 2,35,96,6
	.asciz "<BindingContext>k__BackingField"

LDIFF_SYM581=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,35,104,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController"

LDIFF_SYM582=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM582
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM583=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM583
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM584=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM584
LTDIE_88:

	.byte 5
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

	.byte 112,16
LDIFF_SYM585=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platforms_Ios_Views_MvxViewController`1"

LDIFF_SYM586=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM587=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM588=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM588
LTDIE_87:

	.byte 5
	.asciz "PixelPaint_iOS_Views_SelectImageViewController"

	.byte 128,1,16
LDIFF_SYM589=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,0,6
	.asciz "DataSource"

LDIFF_SYM590=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,112,6
	.asciz "<ImagesTableView>k__BackingField"

LDIFF_SYM591=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 2,35,120,0,7
	.asciz "PixelPaint_iOS_Views_SelectImageViewController"

LDIFF_SYM592=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM593=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM594=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:.ctor"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController__ctor"

	.byte 6,13
	.quad PixelPaint_iOS_Views_SelectImageViewController__ctor
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM595=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM596=Lfde16_end - Lfde16_start
	.long LDIFF_SYM596
Lfde16_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController__ctor

LDIFF_SYM597=Lme_10 - PixelPaint_iOS_Views_SelectImageViewController__ctor
	.long LDIFF_SYM597
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:ViewDidLoad"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad"

	.byte 6,18
	.quad PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM598=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM599=Lfde17_end - Lfde17_start
	.long LDIFF_SYM599
Lfde17_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad

LDIFF_SYM600=Lme_11 - PixelPaint_iOS_Views_SelectImageViewController_ViewDidLoad
	.long LDIFF_SYM600
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:DidReceiveMemoryWarning"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning"

	.byte 6,27
	.quad PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM601=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM602=Lfde18_end - Lfde18_start
	.long LDIFF_SYM602
Lfde18_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning

LDIFF_SYM603=Lme_12 - PixelPaint_iOS_Views_SelectImageViewController_DidReceiveMemoryWarning
	.long LDIFF_SYM603
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:get_ImagesTableView"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView"

	.byte 7,19
	.quad PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM604=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM605=Lfde19_end - Lfde19_start
	.long LDIFF_SYM605
Lfde19_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView

LDIFF_SYM606=Lme_13 - PixelPaint_iOS_Views_SelectImageViewController_get_ImagesTableView
	.long LDIFF_SYM606
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:set_ImagesTableView"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView"

	.byte 7,19
	.quad PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM607=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM608=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM609=Lfde20_end - Lfde20_start
	.long LDIFF_SYM609
Lfde20_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView

LDIFF_SYM610=Lme_14 - PixelPaint_iOS_Views_SelectImageViewController_set_ImagesTableView_UIKit_UITableView
	.long LDIFF_SYM610
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PixelPaint.iOS.Views.SelectImageViewController:ReleaseDesignerOutlets"
	.asciz "PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets"

	.byte 7,22
	.quad PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM611=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM613=Lfde21_end - Lfde21_start
	.long LDIFF_SYM613
Lfde21_start:

	.long 0
	.align 3
	.quad PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets

LDIFF_SYM614=Lme_15 - PixelPaint_iOS_Views_SelectImageViewController_ReleaseDesignerOutlets
	.long LDIFF_SYM614
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
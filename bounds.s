	.file	"bounds.c"
# GNU C (GCC) version 4.4.5 (i686-pc-linux-gnu)
#	compiled by GNU C version 4.4.5, GMP version 4.3.2, MPFR version 2.4.2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc
# -I/home/bossmool/mool-3.12.23-32-core-working/arch/x86/include
# -Iarch/x86/include/generated -Iinclude
# -I/home/bossmool/mool-3.12.23-32-core-working/arch/x86/include/uapi
# -Iarch/x86/include/generated/uapi
# -I/home/bossmool/mool-3.12.23-32-core-working/include/uapi
# -Iinclude/generated/uapi -iprefix
# /opt/gccbin/bin/../lib/gcc/i686-pc-linux-gnu/4.4.5/ -D__KERNEL__
# -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1
# -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1
# -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(bounds)
# -DKBUILD_MODNAME=KBUILD_STR(bounds) -isystem
# /opt/gccbin/bin/../lib/gcc/i686-pc-linux-gnu/4.4.5/include -include
# /home/bossmool/mool-3.12.23-32-core-working/include/linux/kconfig.h -MD
# kernel/.bounds.s.d kernel/bounds.c -m32 -msoft-float -mregparm=3
# -mpreferred-stack-boundary=2 -march=i686 -mtune=generic
# -maccumulate-outgoing-args -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
# -mno-avx -auxbase-strip kernel/bounds.s -g -O2 -Wall -Wundef
# -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
# -Wno-format-security -Wno-sign-compare -Wframe-larger-than=1024
# -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
# -fno-common -fno-delete-null-pointer-checks -freg-struct-return -fno-pic
# -ffreestanding -fstack-protector -fno-asynchronous-unwind-tables
# -fomit-frame-pointer -fno-strict-overflow -fconserve-stack
# -fno-tree-scev-cprop -fverbose-asm
# options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
# -fcse-follow-jumps -fdefer-pop -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
# -freg-struct-return -fregmove -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-interblock -fsched-spec
# -fsched-stalled-insns-dep -fschedule-insns2 -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-pre -ftree-reassoc -ftree-sink -ftree-sra -ftree-switch-conversion
# -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
# -fvar-tracking -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m32 -m96bit-long-double -maccumulate-outgoing-args -malign-stringops
# -mfused-madd -mglibc -mieee-fp -mno-fancy-math-387 -mno-red-zone
# -mno-sse4 -mpush-args -msahf -mtls-direct-seg-refs

	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
# Compiler executable checksum: aaf1cff64b887166f9d2cda312595104

	.cfi_sections	.debug_frame
	.p2align 4,,15
.globl foo
	.type	foo, @function
foo:
.LFB160:
	.file 1 "kernel/bounds.c"
	.loc 1 15 0
	.cfi_startproc
	.loc 1 17 0
#APP
# 17 "kernel/bounds.c" 1
	
->NR_PAGEFLAGS $25 __NR_PAGEFLAGS	#
# 0 "" 2
	.loc 1 18 0
# 18 "kernel/bounds.c" 1
	
->MAX_NR_ZONES $4 __MAX_NR_ZONES	#
# 0 "" 2
	.loc 1 19 0
# 19 "kernel/bounds.c" 1
	
->NR_PCG_FLAGS $3 __NR_PCG_FLAGS	#
# 0 "" 2
	.loc 1 21 0
#NO_APP
	ret
	.cfi_endproc
.LFE160:
	.size	foo, .-foo
.Letext0:
	.file 2 "include/linux/page-flags.h"
	.file 3 "include/linux/mmzone.h"
	.file 4 "/home/bossmool/mool-3.12.23-32-core-working/arch/x86/include/asm/page_types.h"
	.file 5 "include/linux/printk.h"
	.file 6 "include/linux/kernel.h"
	.file 7 "include/linux/page_cgroup.h"
	.section	.debug_info
	.long	0x1f7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.long	.LASF58
	.long	.LASF59
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF42
	.byte	0x4
	.byte	0x2
	.byte	0x4a
	.long	0x143
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.uleb128 0x6
	.long	.LASF13
	.sleb128 2
	.uleb128 0x6
	.long	.LASF14
	.sleb128 3
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4
	.uleb128 0x6
	.long	.LASF16
	.sleb128 5
	.uleb128 0x6
	.long	.LASF17
	.sleb128 6
	.uleb128 0x6
	.long	.LASF18
	.sleb128 7
	.uleb128 0x6
	.long	.LASF19
	.sleb128 8
	.uleb128 0x6
	.long	.LASF20
	.sleb128 9
	.uleb128 0x6
	.long	.LASF21
	.sleb128 10
	.uleb128 0x6
	.long	.LASF22
	.sleb128 11
	.uleb128 0x6
	.long	.LASF23
	.sleb128 12
	.uleb128 0x6
	.long	.LASF24
	.sleb128 13
	.uleb128 0x6
	.long	.LASF25
	.sleb128 14
	.uleb128 0x6
	.long	.LASF26
	.sleb128 15
	.uleb128 0x6
	.long	.LASF27
	.sleb128 16
	.uleb128 0x6
	.long	.LASF28
	.sleb128 17
	.uleb128 0x6
	.long	.LASF29
	.sleb128 18
	.uleb128 0x6
	.long	.LASF30
	.sleb128 19
	.uleb128 0x6
	.long	.LASF31
	.sleb128 20
	.uleb128 0x6
	.long	.LASF32
	.sleb128 21
	.uleb128 0x6
	.long	.LASF33
	.sleb128 22
	.uleb128 0x6
	.long	.LASF34
	.sleb128 23
	.uleb128 0x6
	.long	.LASF35
	.sleb128 24
	.uleb128 0x6
	.long	.LASF36
	.sleb128 25
	.uleb128 0x6
	.long	.LASF37
	.sleb128 8
	.uleb128 0x6
	.long	.LASF38
	.sleb128 12
	.uleb128 0x6
	.long	.LASF39
	.sleb128 8
	.uleb128 0x6
	.long	.LASF40
	.sleb128 4
	.uleb128 0x6
	.long	.LASF41
	.sleb128 11
	.byte	0x0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x4
	.byte	0x3
	.value	0x105
	.long	0x16f
	.uleb128 0x6
	.long	.LASF44
	.sleb128 0
	.uleb128 0x6
	.long	.LASF45
	.sleb128 1
	.uleb128 0x6
	.long	.LASF46
	.sleb128 2
	.uleb128 0x6
	.long	.LASF47
	.sleb128 3
	.uleb128 0x6
	.long	.LASF48
	.sleb128 4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.long	0x190
	.uleb128 0x6
	.long	.LASF49
	.sleb128 0
	.uleb128 0x6
	.long	.LASF50
	.sleb128 1
	.uleb128 0x6
	.long	.LASF51
	.sleb128 2
	.uleb128 0x6
	.long	.LASF52
	.sleb128 3
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.string	"foo"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	.LFB160
	.long	.LFE160
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.byte	0x34
	.long	0x5d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x41
	.long	0x1bc
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x24
	.long	0x1b1
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x67
	.long	0x1d4
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x6
	.value	0x1af
	.long	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1c9
	.uleb128 0xd
	.long	.LASF56
	.byte	0x6
	.value	0x1ba
	.long	0x1f5
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1c9
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x16
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1fb
	.long	0x190
	.string	"foo"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"PCG_MIGRATION"
.LASF38:
	.string	"PG_fscache"
.LASF54:
	.string	"console_printk"
.LASF21:
	.string	"PG_reserved"
.LASF45:
	.string	"ZONE_NORMAL"
.LASF28:
	.string	"PG_mappedtodisk"
.LASF35:
	.string	"PG_compound_lock"
.LASF11:
	.string	"PG_locked"
.LASF15:
	.string	"PG_dirty"
.LASF9:
	.string	"long int"
.LASF24:
	.string	"PG_writeback"
.LASF22:
	.string	"PG_private"
.LASF36:
	.string	"__NR_PAGEFLAGS"
.LASF33:
	.string	"PG_uncached"
.LASF48:
	.string	"__MAX_NR_ZONES"
.LASF13:
	.string	"PG_referenced"
.LASF27:
	.string	"PG_swapcache"
.LASF58:
	.string	"kernel/bounds.c"
.LASF43:
	.string	"zone_type"
.LASF7:
	.string	"long unsigned int"
.LASF25:
	.string	"PG_head"
.LASF34:
	.string	"PG_hwpoison"
.LASF31:
	.string	"PG_unevictable"
.LASF40:
	.string	"PG_savepinned"
.LASF53:
	.string	"max_pfn_mapped"
.LASF37:
	.string	"PG_checked"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"PG_lru"
.LASF19:
	.string	"PG_owner_priv_1"
.LASF30:
	.string	"PG_swapbacked"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"pageflags"
.LASF49:
	.string	"PCG_LOCK"
.LASF46:
	.string	"ZONE_HIGHMEM"
.LASF4:
	.string	"unsigned int"
.LASF12:
	.string	"PG_error"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"PG_pinned"
.LASF56:
	.string	"hex_asc_upper"
.LASF17:
	.string	"PG_active"
.LASF23:
	.string	"PG_private_2"
.LASF5:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF57:
	.string	"GNU C 4.4.5"
.LASF18:
	.string	"PG_slab"
.LASF26:
	.string	"PG_tail"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"hex_asc"
.LASF50:
	.string	"PCG_USED"
.LASF20:
	.string	"PG_arch_1"
.LASF41:
	.string	"PG_slob_free"
.LASF47:
	.string	"ZONE_MOVABLE"
.LASF14:
	.string	"PG_uptodate"
.LASF52:
	.string	"__NR_PCG_FLAGS"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"PG_reclaim"
.LASF59:
	.string	"/home/bossmool/mool-3.12.23-32-core-working"
.LASF10:
	.string	"_Bool"
.LASF32:
	.string	"PG_mlocked"
.LASF44:
	.string	"ZONE_DMA"
	.ident	"GCC: (GNU) 4.4.5"
	.section	.note.GNU-stack,"",@progbits

cmd_kernel/sched/rt.o := g++ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -mno-mmx -mno-sse -fno-pic -mpreferred-stack-boundary=2  -march=i686 -mtune=generic -maccumulate-outgoing-args -Wa,-mtune=generic32 -ffreestanding -fstack-protector -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1  -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx  -Wframe-larger-than=1024  -fomit-frame-pointer -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack  -g -fno-strict-aliasing -fno-common -fpermissive -w -ffreestanding -nostdinc -fno-strict-aliasing -fno-common -pipe -msoft-float -mregparm=3 -freg-struct-return -mpreferred-stack-boundary=2  -march=i686 -mtune=generic -ffreestanding -maccumulate-outgoing-args -fomit-frame-pointer -fno-stack-protector -fno-tree-scev-cprop -nostdinc++ -fexceptions -frtti -fno-strict-aliasing -fno-common -fpermissive  -fno-tree-scev-cprop -O2 -Wframe-larger-than=1024  -fomit-frame-pointer -g -Iinclude2 -I/home/abhijith/project/code/include/c++ -I/home/abhijith/project/code/include/c++ -fexceptions -frtti -v  -Wp,-MD,kernel/sched/.rt.o.d  -nostdinc -isystem /opt/gccbin/bin/../lib/gcc/i686-pc-linux-gnu/4.4.5/include -nostdinc++ -fexceptions -frtti -Iinclude2 -I/home/abhijith/project/code/include/c++ -fno-strict-aliasing -fno-common -fpermissive -w -Iinclude2 -I/home/abhijith/project/code/arch/x86/include -Iinclude2 -I/home/abhijith/project/code/include -D__KERNEL__     -fno-tree-scev-cprop -D"KBUILD_BASENAME=KBUILD_STR(rt)"  -D"KBUILD_MODNAME=KBUILD_STR(rt)" -c -o kernel/sched/.tmp_rt.o kernel/sched/rt.cc

source_kernel/sched/rt.o := kernel/sched/rt.cc

deps_kernel/sched/rt.o := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/sched/debug.h) \
  /home/abhijith/project/code/include/linux/soa.h \
  /home/abhijith/project/code/include/c++/begin_include.h \
  /home/abhijith/project/code/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /home/abhijith/project/code/include/linux/stringify.h \
  /home/abhijith/project/code/include/linux/sched.h \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/preempt/notifiers.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/cxx/runtime.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/mm/owner.h) \
  /home/abhijith/project/code/include/uapi/linux/sched.h \
  /home/abhijith/project/code/include/asm/param.h \
  /home/abhijith/project/code/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/abhijith/project/code/include/uapi/asm-generic/param.h \
  /home/abhijith/project/code/include/linux/capability.h \
  /home/abhijith/project/code/include/uapi/linux/capability.h \
  /home/abhijith/project/code/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/abhijith/project/code/include/uapi/linux/types.h \
  /home/abhijith/project/code/include/asm/types.h \
  /home/abhijith/project/code/include/asm-generic/int-ll64.h \
  /home/abhijith/project/code/include/uapi/asm-generic/int-ll64.h \
  /home/abhijith/project/code/include/asm/bitsperlong.h \
  /home/abhijith/project/code/include/asm-generic/bitsperlong.h \
  /home/abhijith/project/code/include/uapi/asm-generic/bitsperlong.h \
  /home/abhijith/project/code/include/linux/posix_types.h \
  /home/abhijith/project/code/include/linux/stddef.h \
  /home/abhijith/project/code/include/uapi/linux/stddef.h \
  /home/abhijith/project/code/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/abhijith/project/code/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/abhijith/project/code/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/abhijith/project/code/include/c++/end_include.h \
  /home/abhijith/project/code/include/c++/typeinfo \
  /home/abhijith/project/code/include/c++/exception \
  /home/abhijith/project/code/arch/x86/include/asm/posix_types.h \
  /home/abhijith/project/code/include/asm/posix_types_32.h \
  /home/abhijith/project/code/include/asm-generic/posix_types.h \
  /home/abhijith/project/code/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/abhijith/project/code/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /opt/gccbin/bin/../lib/gcc/i686-pc-linux-gnu/4.4.5/include/stdarg.h \
  /home/abhijith/project/code/include/linux/linkage.h \
  /home/abhijith/project/code/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/abhijith/project/code/include/linux/bitops.h \
  /home/abhijith/project/code/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/abhijith/project/code/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /home/abhijith/project/code/arch/x86/include/asm/asm.h \
  /home/abhijith/project/code/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /home/abhijith/project/code/arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /home/abhijith/project/code/include/linux/const.h \
  /home/abhijith/project/code/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  /home/abhijith/project/code/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/x86/pae.h) \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/ptrace.h \
  /home/abhijith/project/code/include/asm/ptrace-abi.h \
  /home/abhijith/project/code/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/processor-flags.h \
  /home/abhijith/project/code/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  /home/abhijith/project/code/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /home/abhijith/project/code/arch/x86/include/asm/desc_defs.h \
  /home/abhijith/project/code/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  /home/abhijith/project/code/include/asm-generic/kmap_types.h \
  /home/abhijith/project/code/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/compat/vdso.h) \
  /home/abhijith/project/code/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /home/abhijith/project/code/arch/x86/include/asm/pgtable-3level_types.h \
  /home/abhijith/project/code/include/asm-generic/pgtable-nopud.h \
  /home/abhijith/project/code/arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /home/abhijith/project/code/arch/x86/include/asm/rwlock.h \
  /home/abhijith/project/code/include/asm-generic/ptrace.h \
  /home/abhijith/project/code/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/debug/static/cpu/has.h) \
  /home/abhijith/project/code/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
  /home/abhijith/project/code/include/asm-generic/bitops/fls64.h \
  /home/abhijith/project/code/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/abhijith/project/code/include/asm-generic/bitops/sched.h \
  /home/abhijith/project/code/arch/x86/include/asm/arch_hweight.h \
  /home/abhijith/project/code/include/asm-generic/bitops/const_hweight.h \
  /home/abhijith/project/code/include/asm-generic/bitops/le.h \
  /home/abhijith/project/code/include/asm/byteorder.h \
  /home/abhijith/project/code/include/linux/byteorder/little_endian.h \
  /home/abhijith/project/code/include/uapi/linux/byteorder/little_endian.h \
  /home/abhijith/project/code/include/linux/swab.h \
  /home/abhijith/project/code/include/uapi/linux/swab.h \
  /home/abhijith/project/code/include/asm/swab.h \
  /home/abhijith/project/code/include/linux/byteorder/generic.h \
  /home/abhijith/project/code/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/abhijith/project/code/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/abhijith/project/code/include/linux/typecheck.h \
  /home/abhijith/project/code/include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/abhijith/project/code/include/linux/kern_levels.h \
  /home/abhijith/project/code/include/linux/dynamic_debug.h \
  /home/abhijith/project/code/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/abhijith/project/code/include/uapi/linux/string.h \
  /home/abhijith/project/code/arch/x86/include/asm/string.h \
  /home/abhijith/project/code/arch/x86/include/asm/string_32.h \
  /home/abhijith/project/code/include/linux/errno.h \
  /home/abhijith/project/code/include/uapi/linux/errno.h \
  /home/abhijith/project/code/include/asm/errno.h \
  /home/abhijith/project/code/include/asm-generic/errno.h \
  /home/abhijith/project/code/include/asm-generic/errno-base.h \
  /home/abhijith/project/code/include/uapi/linux/kernel.h \
  /home/abhijith/project/code/include/linux/sysinfo.h \
  /home/abhijith/project/code/arch/x86/include/asm/div64.h \
  /home/abhijith/project/code/include/linux/timex.h \
  /home/abhijith/project/code/include/uapi/linux/timex.h \
  /home/abhijith/project/code/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/abhijith/project/code/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/abhijith/project/code/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /home/abhijith/project/code/include/linux/seqlock.h \
  /home/abhijith/project/code/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/abhijith/project/code/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/context/tracking.h) \
  /home/abhijith/project/code/include/linux/thread_info.h \
  /home/abhijith/project/code/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /home/abhijith/project/code/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/abhijith/project/code/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/abhijith/project/code/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /home/abhijith/project/code/arch/x86/include/asm/page.h \
  /home/abhijith/project/code/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  /home/abhijith/project/code/include/linux/range.h \
  /home/abhijith/project/code/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/abhijith/project/code/include/asm-generic/getorder.h \
  /home/abhijith/project/code/arch/x86/include/asm/processor.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/xen.h) \
  /home/abhijith/project/code/arch/x86/include/asm/vm86.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/vm86.h \
  /home/abhijith/project/code/arch/x86/include/asm/math_emu.h \
  /home/abhijith/project/code/arch/x86/include/asm/sigcontext.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/sigcontext.h \
  /home/abhijith/project/code/arch/x86/include/asm/current.h \
  /home/abhijith/project/code/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  /home/abhijith/project/code/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/abhijith/project/code/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/abhijith/project/code/arch/x86/include/asm/msr.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/msr.h \
  /home/abhijith/project/code/include/asm/msr-index.h \
  /home/abhijith/project/code/include/linux/ioctl.h \
  /home/abhijith/project/code/include/asm/ioctl.h \
  /home/abhijith/project/code/include/asm-generic/ioctl.h \
  /home/abhijith/project/code/include/uapi/asm-generic/ioctl.h \
  /home/abhijith/project/code/arch/x86/include/asm/cpumask.h \
  /home/abhijith/project/code/include/linux/cpumask.h \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /home/abhijith/project/code/include/linux/bitmap.h \
  /home/abhijith/project/code/arch/x86/include/asm/paravirt.h \
  /home/abhijith/project/code/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /home/abhijith/project/code/arch/x86/include/asm/special_insns.h \
  /home/abhijith/project/code/include/linux/personality.h \
  /home/abhijith/project/code/include/uapi/linux/personality.h \
  /home/abhijith/project/code/include/linux/math64.h \
  /home/abhijith/project/code/include/linux/err.h \
  /home/abhijith/project/code/include/linux/irqflags.h \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/abhijith/project/code/arch/x86/include/asm/irqflags.h \
  /home/abhijith/project/code/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/abhijith/project/code/arch/x86/include/asm/atomic.h \
  /home/abhijith/project/code/arch/x86/include/asm/cmpxchg.h \
  /home/abhijith/project/code/arch/x86/include/asm/cmpxchg_32.h \
  /home/abhijith/project/code/arch/x86/include/asm/atomic64_32.h \
  /home/abhijith/project/code/include/asm-generic/atomic-long.h \
  /home/abhijith/project/code/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/abhijith/project/code/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/abhijith/project/code/include/linux/bottom_half.h \
  /home/abhijith/project/code/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /home/abhijith/project/code/include/linux/spinlock_types.h \
  /home/abhijith/project/code/include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
  /home/abhijith/project/code/include/linux/rwlock_types.h \
  /home/abhijith/project/code/arch/x86/include/asm/spinlock.h \
  /home/abhijith/project/code/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/abhijith/project/code/include/linux/rwlock.h \
  /home/abhijith/project/code/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/abhijith/project/code/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/abhijith/project/code/include/uapi/linux/time.h \
  /home/abhijith/project/code/include/linux/param.h \
  /home/abhijith/project/code/arch/x86/include/asm/timex.h \
  /home/abhijith/project/code/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /home/abhijith/project/code/include/linux/jiffies.h \
  /home/abhijith/project/code/include/linux/rbtree.h \
  /home/abhijith/project/code/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/abhijith/project/code/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/abhijith/project/code/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/compaction.h) \
  /home/abhijith/project/code/include/linux/auxvec.h \
  /home/abhijith/project/code/include/uapi/linux/auxvec.h \
  /home/abhijith/project/code/include/asm/auxvec.h \
  /home/abhijith/project/code/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/abhijith/project/code/arch/x86/include/asm/rwsem.h \
  /home/abhijith/project/code/include/linux/completion.h \
  /home/abhijith/project/code/include/linux/wait.h \
  /home/abhijith/project/code/include/uapi/linux/wait.h \
  /home/abhijith/project/code/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /home/abhijith/project/code/include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
  /home/abhijith/project/code/arch/x86/include/asm/uprobes.h \
  /home/abhijith/project/code/include/linux/notifier.h \
  /home/abhijith/project/code/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /home/abhijith/project/code/include/linux/srcu.h \
  /home/abhijith/project/code/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /home/abhijith/project/code/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/abhijith/project/code/include/linux/rcutree.h \
  /home/abhijith/project/code/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  /home/abhijith/project/code/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /home/abhijith/project/code/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /home/abhijith/project/code/include/linux/page-flags-layout.h \
  /home/abhijith/project/code/include/generated/bounds.h \
  /home/abhijith/project/code/arch/x86/include/asm/mmu.h \
  /home/abhijith/project/code/arch/x86/include/asm/cputime.h \
  /home/abhijith/project/code/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /home/abhijith/project/code/include/asm-generic/cputime_jiffies.h \
  /home/abhijith/project/code/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/abhijith/project/code/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /home/abhijith/project/code/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /home/abhijith/project/code/arch/x86/include/asm/mpspec_def.h \
  /home/abhijith/project/code/arch/x86/include/asm/x86_init.h \
  /home/abhijith/project/code/include/asm/bootparam.h \
  /home/abhijith/project/code/include/linux/screen_info.h \
  /home/abhijith/project/code/include/uapi/linux/screen_info.h \
  /home/abhijith/project/code/include/linux/apm_bios.h \
  /home/abhijith/project/code/include/uapi/linux/apm_bios.h \
  /home/abhijith/project/code/include/linux/edd.h \
  /home/abhijith/project/code/include/uapi/linux/edd.h \
  /home/abhijith/project/code/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/e820.h \
    $(wildcard include/config/intel/txt.h) \
  /home/abhijith/project/code/include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  /home/abhijith/project/code/arch/x86/include/asm/ist.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/ist.h \
  /home/abhijith/project/code/include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /home/abhijith/project/code/include/uapi/video/edid.h \
  /home/abhijith/project/code/arch/x86/include/asm/apicdef.h \
  /home/abhijith/project/code/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  /home/abhijith/project/code/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/abhijith/project/code/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/paravirt/clock.h) \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
  /home/abhijith/project/code/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  /home/abhijith/project/code/include/acpi/pdc_intel.h \
  /home/abhijith/project/code/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /home/abhijith/project/code/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  /home/abhijith/project/code/include/asm-generic/topology.h \
    $(wildcard include/config/have/memoryless/nodes.h) \
  /home/abhijith/project/code/arch/x86/include/asm/numa_32.h \
  /home/abhijith/project/code/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /home/abhijith/project/code/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
  /home/abhijith/project/code/include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  /home/abhijith/project/code/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/abhijith/project/code/include/linux/vmalloc.h \
  /home/abhijith/project/code/include/xen/xen.h \
    $(wildcard include/config/xen/dom0.h) \
  /home/abhijith/project/code/include/xen/interface/xen.h \
  /home/abhijith/project/code/arch/x86/include/asm/xen/interface.h \
  /home/abhijith/project/code/arch/x86/include/asm/xen/interface_32.h \
  /home/abhijith/project/code/arch/x86/include/asm/pvclock-abi.h \
  /home/abhijith/project/code/arch/x86/include/asm/xen/hypervisor.h \
  /home/abhijith/project/code/arch/x86/include/asm/pvclock.h \
  /home/abhijith/project/code/include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  /home/abhijith/project/code/arch/x86/include/asm/idle.h \
  /home/abhijith/project/code/arch/x86/include/asm/io_apic.h \
  /home/abhijith/project/code/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/have/kvm.h) \
  /home/abhijith/project/code/include/linux/sem.h \
  /home/abhijith/project/code/include/uapi/linux/sem.h \
  /home/abhijith/project/code/include/linux/ipc.h \
  /home/abhijith/project/code/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /home/abhijith/project/code/include/linux/highuid.h \
  /home/abhijith/project/code/include/uapi/linux/ipc.h \
  /home/abhijith/project/code/include/asm/ipcbuf.h \
  /home/abhijith/project/code/include/asm-generic/ipcbuf.h \
  /home/abhijith/project/code/include/asm/sembuf.h \
  /home/abhijith/project/code/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/abhijith/project/code/include/uapi/linux/signal.h \
  /home/abhijith/project/code/arch/x86/include/asm/signal.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/signal.h \
  /home/abhijith/project/code/include/asm-generic/signal-defs.h \
  /home/abhijith/project/code/include/asm/siginfo.h \
  /home/abhijith/project/code/include/asm-generic/siginfo.h \
  /home/abhijith/project/code/include/uapi/asm-generic/siginfo.h \
  /home/abhijith/project/code/include/linux/pid.h \
  /home/abhijith/project/code/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/abhijith/project/code/include/linux/pfn.h \
  /home/abhijith/project/code/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /home/abhijith/project/code/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/abhijith/project/code/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/abhijith/project/code/include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/abhijith/project/code/include/linux/proportions.h \
  /home/abhijith/project/code/include/linux/percpu_counter.h \
  /home/abhijith/project/code/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  /home/abhijith/project/code/include/uapi/linux/seccomp.h \
  /home/abhijith/project/code/arch/x86/include/asm/seccomp.h \
  /home/abhijith/project/code/arch/x86/include/asm/seccomp_32.h \
  /home/abhijith/project/code/include/linux/unistd.h \
  /home/abhijith/project/code/arch/x86/include/asm/unistd.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/unistd.h \
  /home/abhijith/project/code/arch/x86/include/asm/unistd_32.h \
  /home/abhijith/project/code/include/linux/rculist.h \
  /home/abhijith/project/code/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /home/abhijith/project/code/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/abhijith/project/code/include/linux/resource.h \
  /home/abhijith/project/code/include/uapi/linux/resource.h \
  /home/abhijith/project/code/include/asm/resource.h \
  /home/abhijith/project/code/include/asm-generic/resource.h \
  /home/abhijith/project/code/include/uapi/asm-generic/resource.h \
  /home/abhijith/project/code/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /home/abhijith/project/code/include/linux/timerqueue.h \
  /home/abhijith/project/code/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/abhijith/project/code/include/linux/latencytop.h \
  /home/abhijith/project/code/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  /home/abhijith/project/code/include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  /home/abhijith/project/code/include/linux/sysctl.h \
  /home/abhijith/project/code/include/uapi/linux/sysctl.h \
  /home/abhijith/project/code/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/abhijith/project/code/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/abhijith/project/code/include/linux/gfp.h \
  /home/abhijith/project/code/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
  /home/abhijith/project/code/include/linux/mool_scheduler.h \
    $(wildcard include/config/magic/sysrq.h) \
    $(wildcard include/config/sched/hrtick.h) \
  /home/abhijith/project/code/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  /home/abhijith/project/code/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /home/abhijith/project/code/include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
  /home/abhijith/project/code/include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/abhijith/project/code/include/linux/sysfs.h \
  /home/abhijith/project/code/include/linux/kobject_ns.h \
  /home/abhijith/project/code/include/linux/stat.h \
  /home/abhijith/project/code/arch/x86/include/uapi/asm/stat.h \
  /home/abhijith/project/code/include/uapi/linux/stat.h \
  /home/abhijith/project/code/include/linux/kref.h \
  kernel/sched/rt_mool.h \
  kernel/sched/sched.h \
    $(wildcard include/config/cfs/bandwidth.h) \
    $(wildcard include/config/paravirt/time/accounting.h) \
  /home/abhijith/project/code/include/linux/sched/sysctl.h \
  /home/abhijith/project/code/include/linux/sched/rt.h \
  /home/abhijith/project/code/include/linux/stop_machine.h \
    $(wildcard include/config/stop/machine.h) \
  /home/abhijith/project/code/include/linux/cpu.h \
    $(wildcard include/config/arch/has/cpu/autoprobe.h) \
    $(wildcard include/config/arch/cpu/probe/release.h) \
    $(wildcard include/config/pm/sleep/smp.h) \
  /home/abhijith/project/code/include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/abhijith/project/code/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/abhijith/project/code/include/linux/klist.h \
  /home/abhijith/project/code/include/linux/pinctrl/devinfo.h \
  /home/abhijith/project/code/include/linux/ratelimit.h \
  /home/abhijith/project/code/arch/x86/include/asm/device.h \
    $(wildcard include/config/x86/dev/dma/ops.h) \
    $(wildcard include/config/intel/iommu.h) \
    $(wildcard include/config/amd/iommu.h) \
  /home/abhijith/project/code/include/linux/pm_wakeup.h \
  /home/abhijith/project/code/include/linux/tick.h \
    $(wildcard include/config/generic/clockevents.h) \
    $(wildcard include/config/generic/clockevents/broadcast.h) \
    $(wildcard include/config/tick/oneshot.h) \
  /home/abhijith/project/code/include/linux/clockchips.h \
    $(wildcard include/config/generic/clockevents/build.h) \
    $(wildcard include/config/arch/has/tick/broadcast.h) \
  /home/abhijith/project/code/include/linux/context_tracking_state.h \
  /home/abhijith/project/code/include/linux/static_key.h \
  kernel/sched/cpupri.h \
  kernel/sched/cpuacct.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
  /home/abhijith/project/code/include/linux/cgroup.h \
  /home/abhijith/project/code/include/linux/cgroupstats.h \
  /home/abhijith/project/code/include/linux/taskstats.h \
  /home/abhijith/project/code/include/linux/prio_heap.h \
  /home/abhijith/project/code/include/linux/idr.h \
  /home/abhijith/project/code/include/linux/xattr.h \
  /home/abhijith/project/code/include/uapi/linux/xattr.h \
  /home/abhijith/project/code/include/linux/libc-compat.h \
  /home/abhijith/project/code/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /home/abhijith/project/code/include/linux/kdev_t.h \
  /home/abhijith/project/code/include/uapi/linux/kdev_t.h \
  /home/abhijith/project/code/include/linux/dcache.h \
  /home/abhijith/project/code/include/linux/rculist_bl.h \
  /home/abhijith/project/code/include/linux/list_bl.h \
  /home/abhijith/project/code/include/linux/bit_spinlock.h \
  /home/abhijith/project/code/include/linux/lockref.h \
    $(wildcard include/config/cmpxchg/lockref.h) \
  /home/abhijith/project/code/include/linux/path.h \
  /home/abhijith/project/code/include/linux/list_lru.h \
  /home/abhijith/project/code/include/linux/radix-tree.h \
  /home/abhijith/project/code/include/linux/semaphore.h \
  /home/abhijith/project/code/include/linux/fiemap.h \
  /home/abhijith/project/code/include/linux/shrinker.h \
  /home/abhijith/project/code/include/linux/migrate_mode.h \
  /home/abhijith/project/code/include/linux/percpu-rwsem.h \
  /home/abhijith/project/code/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/abhijith/project/code/include/uapi/linux/fs.h \
  /home/abhijith/project/code/include/linux/limits.h \
  /home/abhijith/project/code/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/abhijith/project/code/include/linux/dqblk_xfs.h \
  /home/abhijith/project/code/include/linux/dqblk_v1.h \
  /home/abhijith/project/code/include/linux/dqblk_v2.h \
  /home/abhijith/project/code/include/linux/dqblk_qtree.h \
  /home/abhijith/project/code/include/linux/projid.h \
  /home/abhijith/project/code/include/uapi/linux/quota.h \
  /home/abhijith/project/code/include/linux/nfs_fs_i.h \
  /home/abhijith/project/code/include/linux/fcntl.h \
  /home/abhijith/project/code/include/uapi/linux/fcntl.h \
  /home/abhijith/project/code/arch/x86/include/asm/fcntl.h \
  /home/abhijith/project/code/include/asm-generic/fcntl.h \
  /home/abhijith/project/code/include/linux/percpu-refcount.h \
  /home/abhijith/project/code/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/debug.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/net/cls/cgroup.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
  kernel/sched/stats.h \
  kernel/sched/auto_group.h \
  kernel/sched/features.h \

kernel/sched/rt.o: $(deps_kernel/sched/rt.o)

$(deps_kernel/sched/rt.o):

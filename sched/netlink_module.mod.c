#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

MODULE_INFO(intree, "Y");

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x893f135d, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x151fc47d, __VMLINUX_SYMBOL_STR(__netlink_kernel_create) },
	{ 0xae1c062, __VMLINUX_SYMBOL_STR(init_net) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x515c79b0, __VMLINUX_SYMBOL_STR(netlink_unicast) },
	{ 0xb6ed1e53, __VMLINUX_SYMBOL_STR(strncpy) },
	{ 0x1c159504, __VMLINUX_SYMBOL_STR(__nlmsg_put) },
	{ 0x8d947d49, __VMLINUX_SYMBOL_STR(__alloc_skb) },
	{ 0xd0d8621b, __VMLINUX_SYMBOL_STR(strlen) },
	{ 0x280f9f14, __VMLINUX_SYMBOL_STR(__per_cpu_offset) },
	{ 0xfe7c4287, __VMLINUX_SYMBOL_STR(nr_cpu_ids) },
	{ 0xc0a3d105, __VMLINUX_SYMBOL_STR(find_next_bit) },
	{ 0x657349c3, __VMLINUX_SYMBOL_STR(cpu_possible_mask) },
	{ 0x5035f192, __VMLINUX_SYMBOL_STR(policy_checker) },
	{ 0x9c7037ff, __VMLINUX_SYMBOL_STR(netlink_kernel_release) },
	{ 0x50eedeb8, __VMLINUX_SYMBOL_STR(printk) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


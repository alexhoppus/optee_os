global-incdirs-y += include
srcs-$(CFG_ARM32_$(sm)) += start_a32.S
srcs-$(CFG_ARM64_$(sm)) += start_a64.S
srcs-$(CFG_ARM32_$(sm)) += syscalls_a32.S
srcs-$(CFG_ARM64_$(sm)) += syscalls_a64.S
srcs-$(CFG_ARM64_$(sm)) += tlsdesc_rel_a64.S
srcs-$(CFG_RV64_$(sm)) += start_rv64.S
srcs-$(call cfg-one-enabled,CFG_RV32_$(sm) CFG_RV64_$(sm)) += syscalls_rv.S
srcs-y += dl.c
srcs-y += main.c
srcs-y += sys.c
srcs-y += ta_elf.c
srcs-y += ta_elf_rel.c
srcs-$(CFG_FTRACE_SUPPORT) += ftrace.c
srcs-$(CFG_TA_PAUTH) += pauth.c
cflags-lib-$(CFG_CORE_SANITIZE_UNDEFINED) += -fsanitize=undefined

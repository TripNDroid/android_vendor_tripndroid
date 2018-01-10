package cc
func (compiler *baseCompiler) compilerFlags(ctx ModuleContext, flags Flags) Flags {

	if (Bool(ctx.AConfig().ProductVariables.BoardUsesQCOMHardware)) {
		flags.CppFlags = append(flags.CppFlags, "-DQCOM_HARDWARE")
	}
	if (Bool(ctx.AConfig().ProductVariables.TargetUsesQCOMBsp)) {
		flags.CppFlags = append(flags.CppFlags, "-DQCOM_BSP")
		flags.CppFlags = append(flags.CppFlags, "-DQTI_BSP")
	}

	return flags
}

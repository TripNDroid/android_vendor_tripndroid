package android
func (c *deviceConfig) BoardUsesQCOMHardware() bool {
	return Bool(c.config.ProductVariables.BoardUsesQCOMHardware)
}

func (c *deviceConfig) TargetUsesQCOMBsp() bool {
	return Bool(c.config.ProductVariables.TargetUsesQCOMBsp)
}

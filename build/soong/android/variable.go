package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`

	BoardUsesQCOMHardware *bool `json:",omitempty"`
	TargetUsesQCOMBsp *bool `json:",omitempty"`
}

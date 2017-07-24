package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Has_legacy_camera_hal1 struct {
		Cflags []string
	}
	Uses_media_extensions struct {
		Cflags []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Has_legacy_camera_hal1     *bool `json:",omitempty"`
	Uses_media_extensions      *bool `json:",omitempty"`

	BoardUsesQCOMHardware *bool `json:",omitempty"`
	TargetUsesQCOMBsp *bool `json:",omitempty"`
}

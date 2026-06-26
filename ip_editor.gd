@tool
extends PanelContainer

@export var label: String = "IP Address":
	set(val):
		%Label.text = val
		label = val

@export var is_mask: bool = false:
	set(val):
		is_mask = val
		%MaskSep.visible = is_mask
		%Mask.visible = is_mask

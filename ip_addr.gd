extends LineEdit

var value: String = "0"

func _on_text_changed(new_text: String) -> void:
	if new_text.is_empty():
		return
	if not new_text.is_valid_int():
		text = value
	else:
		var num: int = new_text.to_int()
		if num < 0:
			text = "0"
		if num > 255:
			text = "255"
		
		value = str(num)


func _on_cidr_text_changed(new_text: String) -> void:
	if new_text.is_empty():
		return
	if not new_text.is_valid_int():
		text = value
	else:
		var num: int = new_text.to_int()
		if num < 0:
			text = "0"
		if num > 32:
			text = "32"
		
		value = str(num)


func _on_focus_exited() -> void:
	if text.is_empty():
		text = "0"

extends VideoStreamPlayer


func _on_finished() -> void:
	get_tree().quit()

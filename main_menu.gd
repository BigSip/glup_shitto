extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var music = true

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://GlupHouse.tscn")
	if music == true:
		Bgmusic.get_tree().get_first_node_in_group("bgm").play()
	else:
		pass


func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_music_toggled(toggled_on: bool) -> void:
	music = false

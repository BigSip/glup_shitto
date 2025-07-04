extends VideoStreamPlayer

@export var destination_level_tag: String
@export var destination_door_tag: String
@export var spawn_direction = "up"

@onready var spawn = $Spawn

func _on_finished() -> void:
	Navman.go_to_level(destination_level_tag, destination_door_tag)

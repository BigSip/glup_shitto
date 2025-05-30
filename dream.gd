extends Node2D
@onready var dialogue_box = $DialogueBox
@export var destination_level_tag: String
@export var destination_door_tag: String
@export var spawn_direction = "up"
@onready var spawn = $Spawn

func _ready():
	dialogue_box.start('START')



func _on_dialogue_box_dialogue_ended() -> void:
	Navman.go_to_level(destination_level_tag, destination_door_tag)

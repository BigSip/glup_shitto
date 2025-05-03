extends Node

const scene_glup_house = preload("res://GlupHouse.tscn")
const scene_glup_yard = preload("res://GlupFrontYard.tscn")

signal on_trigger_player_spawn

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"GlupHouse":
			scene_to_load = scene_glup_house
		"GlupYard":
			scene_to_load = scene_glup_yard
			
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)

func trigger_player_spawn(position: Vector2, direction: String):
	on_trigger_player_spawn.emit(position, direction)

extends Node

const scene_mm = preload("res://main_menu.tscn")
const scene_glup_house = preload("res://GlupHouse.tscn")
const scene_glup_yard = preload("res://GlupFrontYard.tscn")
const scene_glup_hills = preload("res://GlupHills.tscn")
const scene_picking = preload("res://potatoPicking.tscn")
const scene_house2 = preload("res://GlupHouse2.tscn")
const scene_ihmcut = preload("res://hatemyselfcutscene.tscn")
const scene_dream = preload("res://dream.tscn")
const scene_house3 = preload("res://house3.tscn")
const scene_gfy2 = preload("res://GlupFrontYard2.tscn")
const scene_climb = preload("res://climb1.tscn")
const scene_summit = preload("res://summit.tscn")
const scene_end = preload("res://end.tscn")

signal on_trigger_player_spawn

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"mm":
			scene_to_load = scene_mm
		"GlupHouse":
			scene_to_load = scene_glup_house
		"GlupYard":
			scene_to_load = scene_glup_yard
		"GlupHills":
			scene_to_load = scene_glup_hills
		"picking":
			scene_to_load = scene_picking
		"house2":
			scene_to_load = scene_house2
		"ihmscene":
			scene_to_load = scene_ihmcut
		"dream":
			scene_to_load = scene_dream
		"house3":
			scene_to_load = scene_house3
		"gfy2":
			scene_to_load = scene_gfy2
		"climb":
			scene_to_load = scene_climb
		"summit":
			scene_to_load = scene_summit
		"end":
			scene_to_load = scene_end

	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)

func trigger_player_spawn(position: Vector2, direction: String):
	on_trigger_player_spawn.emit(position, direction)

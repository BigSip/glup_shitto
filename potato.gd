extends Sprite2D
@onready var interaction_area: InteractionArea = $InteractionArea
@export var destination_level_tag: String
@export var destination_door_tag: String
@export var spawn_direction = "up"

@onready var spawn = $Spawn

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	Navman.go_to_level(destination_level_tag, destination_door_tag)

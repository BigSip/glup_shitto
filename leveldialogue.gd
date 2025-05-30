extends Node2D

@onready var dialogue_box = $DialogueBox
@onready var interaction_area: InteractionArea = $InteractionArea

func _ready():
	await get_tree().create_timer(1).timeout
	dialogue_box.start('START')

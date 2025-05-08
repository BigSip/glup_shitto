extends Sprite2D

@onready var dialogue_box = $DialogueBox
@onready var interaction_area: InteractionArea = $InteractionArea

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	dialogue_box.start('START')

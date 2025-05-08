extends Sprite2D

@onready var dialogue_box = $DialogueBox
@onready var interaction_area: InteractionArea = $InteractionArea
var hasTalked = false
var bean: int = 0


func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _process(delta):
	if Input.is_action_just_pressed("Jump", true):
		bean += 1

func _on_interact():
	if hasTalked == false and bean < 5:
		dialogue_box.start('START')
		hasTalked = true
	elif bean >= 5 and hasTalked == false:
		dialogue_box.start('START3')
		hasTalked = true
	else:
		dialogue_box.start('START2')

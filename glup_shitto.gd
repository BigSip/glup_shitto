extends CharacterBody2D

class_name Player

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var _animated_sprite = $AnimatedSprite2D
var jumpstop = false
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		_animated_sprite.play("jump")
		jumpstop = true
	if is_on_floor() and jumpstop:
		_animated_sprite.stop()
		jumpstop = false
		_animated_sprite.play("idle")
	# Handle jump.
	var jumping := false
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	elif Input.is_action_pressed("Right") and not jumpstop:
		_animated_sprite.play("walk")
		_animated_sprite.flip_h = 0
	elif Input.is_action_pressed("Left") and not jumpstop:
		_animated_sprite.play("walk")
		_animated_sprite.flip_h = 1
	else:
		if !_animated_sprite.is_playing():
			_animated_sprite.stop()
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		_animated_sprite.stop()

	move_and_slide()
func spriteflip():
	pass

func _ready():
	Navman.on_trigger_player_spawn.connect(_on_spawn)

func _on_spawn(postion: Vector2, direction: String):
	global_position = postion
	

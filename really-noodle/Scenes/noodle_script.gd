extends Node2D

@export var move_acceleration := 600.0
@export var max_speed := 200.0
@export var drag := 5.0  # higher = more resistance



var velocity := Vector2.ZERO

func _physics_process(delta):
	var input_vector := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()

	# Accelerate 
	if input_vector != Vector2.ZERO:
		velocity += input_vector * move_acceleration * delta

	# Apply drag 
	velocity = velocity.move_toward(Vector2.ZERO, drag * delta)

	# Clamp speed
	if velocity.length() > max_speed:
		velocity = velocity.normalized() * max_speed

	# Move the softbody
	position += velocity * delta

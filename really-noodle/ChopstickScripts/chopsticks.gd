extends CharacterBody2D

@export var max_speed := 200.0

func _physics_process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	var to_mouse = mouse_position - global_position
	var distance = to_mouse.length()

	if distance > 1:
		var direction = to_mouse.normalized()
		velocity = direction * min(distance / delta, max_speed)
	else:
		velocity = Vector2.ZERO

	move_and_slide()

extends Node2D

@export var speed = 800.0
@export var spawn_offset_y = 800.0 # Increased how far above the screen to spawn
@export var despawn_offset_y = 500.0 # How far below the screen to despawn after reversal
#const NOODLE = preload("res://Scenes/noodle.tscn")

@onready var noodle: Node2D = $"../Noodle"

const DESCENT_ANGLE_DEGREES = 27.5
const DESCENT_ANGLE_RADIANS = deg_to_rad(DESCENT_ANGLE_DEGREES)

var velocity: Vector2
var is_moving_down = true
var target_position

func _ready() -> void:
	target_position = noodle.position
	var area_2d = $Area2D0

func initialize_target(noodle_pos: Vector2) -> void:
	target_position = noodle.position
	noodle_pos = target_position
	global_position = Vector2(target_position.x, target_position.y - spawn_offset_y)
	velocity = (target_position - global_position).normalized()
	is_moving_down = true 

func _process(delta: float) -> void:
	# Move the chopsticks.
	
	position += velocity * speed * delta

	if not is_moving_down:
		if global_position.y > get_viewport_rect().size.y + despawn_offset_y:
			queue_free()

func reverse_direction() -> void:
	is_moving_down = false
	velocity = -velocity 

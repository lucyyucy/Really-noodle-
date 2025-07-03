extends Node2D

@export var chopstick_scene: PackedScene

@onready var noodle_node = $Noodle
@onready var timer = $Timer

var noodle_start_position: Vector2

func _ready():
	if noodle_node:
		print("Noodle node found: ", noodle_node.name, " at ", noodle_node.global_position)
		noodle_start_position = noodle_node.global_position
	else:
		print("Noodle node not found! Defaulting to center of screen.")
		noodle_start_position = get_viewport_rect().size / 2
	
	print("Chopsticks will target initial noodle position: ", noodle_start_position)
	
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	if not chopstick_scene:
		print("Error: chopstick_scene is not assigned in the editor!")
		return

	var new_chopstick = chopstick_scene.instantiate()
	if not new_chopstick:
		print("Error: Failed to instantiate chopstick_scene!")
		return

	add_child(new_chopstick)

	if new_chopstick.has_method("initialize_target"):
		new_chopstick.initialize_target(noodle_start_position)
	else:
		print("Error: Instantiated chopstick does not have 'initialize_target' method. Is the correct scene assigned?")

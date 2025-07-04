extends Area2D

@export var allowed_objects: Array[Node2D]

func _on_body_entered(body):
	var current = body
	while current:
		if current in allowed_objects:
			return  # Found a match, do nothing
		current = current.get_parent()

	get_tree().change_scene_to_file("res://Scenes/chopsticks_win_screen.tscn")

extends Node

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	pass # Replace with function body.

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/how_to_play.tscn")


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/control.tscn")

func _on_exit_button_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

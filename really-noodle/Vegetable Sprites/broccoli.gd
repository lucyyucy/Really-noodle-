extends Node2D

func _ready() -> void:
	print("test script")

func _on_visible_on_screen_notifier_2d_screen_exited():
	print("Test")

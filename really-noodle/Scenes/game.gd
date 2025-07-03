extends Node

func _ready():
	VegetablesTracker.all_veggies_offscreen.connect(_on_win)

func _on_win():
	print("All vegetables are off-screen")

extends Node2D 

@onready var notifier = $VisibleOnScreenNotifier2D

func _ready():
	VegetablesTracker.register_vegetable()
	notifier.screen_exited.connect(_on_screen_exited)

func _on_screen_exited():
	VegetablesTracker.vegetable_offscreen()
	print("gulp")

extends Node2D

@onready var timer:Timer = $Timer
@onready var label:Label = $Label

func _ready():
	timer.start(6)

func _process(delta):
	label.text = str(round(timer.time_left))
	if _on_timer_timeout() == true:
		label.text = "Time's up!"
		timer.stop

func _on_timer_timeout():
	label.text = "Time's up!"

extends Node

@onready var timer:Timer = $Timer
@onready var label:Label = $Label

func _ready():
	pass


func time_left():
	var time_left = timer.time_left
	var minute = floor(time_left /60)
	var second = fmod(time_left, 60)
	return [minute, second]

func _process(delta):
	label.text = "%02d:%02d" % time_left()
	timer.stop

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://win_screen.tscn")

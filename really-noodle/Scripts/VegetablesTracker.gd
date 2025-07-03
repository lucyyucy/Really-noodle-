extends Node

var total_veggies := 0
var offscreen_veggies := 0

signal all_veggies_offscreen

func register_vegetable():
	total_veggies += 1

func vegetable_offscreen():
	offscreen_veggies += 1
	if offscreen_veggies == total_veggies:
		all_veggies_offscreen.emit()

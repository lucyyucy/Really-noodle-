extends Sprite2D

@onready var noodle: Node2D = $"../Noodle"
#@onready var broccoli: Node2D = $"../broccoli"
#@onready var corn: Node2D = $"../corn"
#@onready var onion: Node2D = $"../onion"
#@onready var egg: Node2D = $"../egg"
#@onready var carrot: Node2D = $"../carrot"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_2d_body_exited(body: Node2D) -> void:
	noodle.get_child(0).gravity_scale = 0.3
	await get_tree().create_timer(0.03).timeout
	noodle.get_child(0).gravity_scale = -0.01

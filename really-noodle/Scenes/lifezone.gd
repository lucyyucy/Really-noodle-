extends Area2D
@export var veggies: Array[Node2D]

func _on_body_entered(body: Node2D):
	var parent = body.get_parent() 
	print(parent.name)
	#if parent is not Node2D: return
	if parent.name in veggies:
		var index = veggies.find(parent.name, 0)
		veggies.remove_at(index)
		#print(veggies)
func _process(delta: float) -> void:
	pass

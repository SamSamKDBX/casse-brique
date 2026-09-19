extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_tree().get_nodes_in_group("brick").is_empty():
		winning()

func winning():
	get_tree().change_scene_to_file("res://ui/winning/winning.tscn")

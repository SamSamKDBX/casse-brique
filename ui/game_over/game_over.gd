extends Node

func _on_fosse_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		game_over()

func game_over():
	get_tree().change_scene_to_file("res://ui/game_over/game_over.tscn")

extends Node

@export var brickBody: StaticBody2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		print("touched")
		brickBody.queue_free()

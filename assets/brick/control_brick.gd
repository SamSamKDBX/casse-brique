extends Node

@export var brickBody: StaticBody2D
@export var audio_hit: AudioStreamPlayer2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("ball"):
		audio_hit.play()
		audio_hit.reparent(get_tree().get_root())
		brickBody.queue_free()

extends RigidBody2D

signal update_score

func _on_contol_ball_update_score(hotness: int) -> void:
	update_score.emit(hotness)

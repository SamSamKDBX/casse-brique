extends RigidBody2D

signal update_score

func _on_contol_ball_update_score() -> void:
	update_score.emit()

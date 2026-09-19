extends Node

@export var speed: float = 150
@export var ballBody: RigidBody2D
@export var hitWallAudio: AudioStreamPlayer2D
@export var hitBrickAudio: AudioStreamPlayer2D
@export var hitRaquetteAudio: AudioStreamPlayer2D

func _ready() -> void:
	ballBody.linear_velocity.y = speed

func _on_ball_body_entered(body: Node) -> void:
	if body.is_in_group("wall"):
		hitWallAudio.play()
		print("hit wall")
	elif body.is_in_group("raquette"):
		hitRaquetteAudio.play()
		print("hit raquette")
	elif body.is_in_group("brick"):
		hitBrickAudio.play()
		print("hit brick")
		body.queue_free()

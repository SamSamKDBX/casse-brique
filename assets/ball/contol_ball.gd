extends Node

@export var speed: float = 150
@export var ballBody: RigidBody2D
@export var hitWallAudio: AudioStreamPlayer2D
@export var hitBrickAudio: AudioStreamPlayer2D
@export var hitRaquetteAudio: AudioStreamPlayer2D
@export var hitAnimation: AnimationPlayer

var hotness: int = 0

signal update_score

func _ready() -> void:
	ballBody.linear_velocity.y = speed

func _on_ball_body_entered(body: Node) -> void:
	hitAnimation.play("hit_animation")
	if body.is_in_group("wall"):
		hitWallAudio.play()
		print("hit wall")
	elif body.is_in_group("raquette"):
		hitRaquetteAudio.play()
		print("hit raquette")
		hotness = 0
	elif body.is_in_group("brick"):
		hitBrick(body)
		
func hitBrick(body: Node):
	hitBrickAudio.play()
	print("hit brick")
	body.queue_free()
	hotness += 1
	update_score.emit(hotness)

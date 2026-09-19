extends Node

@export var speed: float = 150
@export var body: RigidBody2D
# la force de base est vers le bas

func _ready() -> void:
	body.linear_velocity.y = speed

func _physics_process(delta: float) -> void:
	print(body.linear_velocity)

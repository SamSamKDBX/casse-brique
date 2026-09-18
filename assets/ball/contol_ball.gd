extends Node

@export var speed: float = 300
@export var body: RigidBody2D
var force: Vector2 = Vector2.DOWN

func _physics_process(delta: float) -> void:
	body.add_constant_central_force(force)

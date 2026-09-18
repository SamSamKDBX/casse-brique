extends Node

@export var speed: float = 200
@export var body: RigidBody2D
# la force de base est vers le bas

func _ready() -> void:
	body.linear_velocity.y = speed
	body.apply_central_impulse(Vector2.DOWN)

func _physics_process(delta: float) -> void:
	# appliquer une force constante dans la direction
	#body.apply_central_force(force * speed)
	print(body.linear_velocity)

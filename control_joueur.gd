extends Node

@export var speed: float = 300.0
@export var margin_screen: float = 40
@export var body: CharacterBody2D

func _physics_process(delta: float) -> void:
	body.velocity.y = 0
	body.velocity.x = Input.get_axis("p1_left", "p1_right") * speed
	body.move_and_slide()
	
	var viewport_width = body.get_viewport_rect().size.x
	body.position.x = clamp(body.position.x, margin_screen, viewport_width - margin_screen)
	print(body.position)

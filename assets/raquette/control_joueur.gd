extends Node

@export var speed: float = 300.0
@export var margin_screen: float = 40
@export var body: CharacterBody2D

func _physics_process(delta: float) -> void:
	# mettre la vélocité à 0
	body.velocity = Vector2.ZERO
	# Si le joueur appuie sur le bouton droite ou gauche
	if Input.is_action_pressed("p1_left") || Input.is_action_pressed("p1_right"):
		# la vélocité en x est calculée grâce à la vitesse et la direction donnée
		body.velocity.x = Input.get_axis("p1_left", "p1_right") * speed
		# bouger en fonction de la vélocité
		body.move_and_slide()

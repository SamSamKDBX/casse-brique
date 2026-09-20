extends Node

@export var audioCoin: AudioStreamPlayer2D
@export var encouragementAnimation: AnimationPlayer
@export var scoreValueLabel: Label
var score: int = 0
var updatedScore: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if get_tree().get_nodes_in_group("brick").is_empty():
		winning()
	if score < updatedScore:
		audioCoin.play()
		scoreValueLabel.label_settings.font_color = Color.YELLOW
		score += 1
	else:
		scoreValueLabel.label_settings.font_color = Color.WHITE
	scoreValueLabel.text = str(score)

func winning():
	get_tree().change_scene_to_file("res://ui/winning/winning.tscn")

func _on_ball_update_score(hotness: int) -> void:
	updatedScore += 10 * hotness
	showEncouragement(hotness)

func showEncouragement(hotness: int):
	if hotness == 1:
		encouragementAnimation.play("good")
	elif hotness == 2:
		encouragementAnimation.play("great")
	elif hotness == 3:
		encouragementAnimation.play("excellent")

extends Node2D
const Player = preload("res://Player/playerscene.gd")

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body is Player:
		body.jumppad()

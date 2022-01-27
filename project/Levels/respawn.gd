extends Area2D
const Player = preload("res://Player/playerscene.gd")
const Enemy = preload("res://Enemies/Enemy.gd")

func _on_respawn_body_entered(body):
	if body is Player:
		body.die()
	if body is Enemy:
		body.enemyDie()

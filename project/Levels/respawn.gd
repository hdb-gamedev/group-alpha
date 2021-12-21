extends Area2D
const Player = preload("res://Player/playerscene.gd")

func _on_respawn_body_entered(body):
	if body is Player:
		body.die()
		$Camera2D2.reset_smoothing()

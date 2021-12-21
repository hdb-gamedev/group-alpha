extends Node2D


func _ready():
	pass
	
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Levels/topdown.tscn")

func _process(delta):
	$Camera2D2.set_position($KinematicBody2D.get_position())

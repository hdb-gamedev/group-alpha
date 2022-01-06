extends Node2D
onready var camera = $Camera2D
onready var player = $KinematicBody2D

func _ready():
	pass
	
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Levels/topdown.tscn")

func _process(delta):
	camera.set_position(player.get_position())

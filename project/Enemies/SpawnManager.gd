extends Node
var Enemy = preload ("res://Enemies/Enemy.tscn")

func _ready():
	for i in range(10):
		var e = Enemy.instance()
		e.position = Vector2(rand_range(-1750, 1850), -600)
		add_child(e)
	

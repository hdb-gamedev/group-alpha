extends KinematicBody2D

func _ready():
	pass 

func _physics_process(delta):
	var velocity = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	else:
		velocity.x = 0

func _process(delta):
	pass

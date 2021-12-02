extends KinematicBody2D

func _ready():
	pass 

func _physics_process(delta):
	var velocity = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -100
	else:
		velocity.x = 0
	
	if !is_on_floor():
		velocity.y += 100
	else: velocity = 0.1
	velocity.y += 100
	move_and_slide(velocity)

func _process(delta):
	pass

extends KinematicBody2D
var velocity = Vector2(0, 0)

func _ready():
	pass 

func _physics_process(delta):
	#leftright movemnt
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -100
	else:
		velocity.x = 0
		
	#jump
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -300
	
	#if !is_on_floor():
	#	velocity.y += 100
	#else: velocity = 0.1
	velocity.y += 10
	move_and_slide(velocity)

func _process(delta):
	pass

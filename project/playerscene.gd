extends KinematicBody2D
var velocity = Vector2(0, 0)


func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -100
	else:
		velocity.x = 0
	
	if !is_on_floor():
		velocity.y += 10
	else: velocity.y = 0.1
	
	if Input.is_action_just_pressed("ui_up") && is_on_floor():
		velocity.y = -300

	move_and_slide(velocity, Vector2(0, -1))

func _process(delta):
	pass

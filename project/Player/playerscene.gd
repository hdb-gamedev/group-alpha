extends KinematicBody2D
var velocity = Vector2(0, 0)


func _ready():
	pass 

func _physics_process(delta):
	$AnimatedSprite.animation = "walk"
	if Input.is_action_pressed("move_right"):
		velocity.x = 150 
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("move_left"):
		velocity.x = -150
		$AnimatedSprite.flip_h = false
	else:
		velocity.x = 0
	
	if !is_on_floor():
		velocity.y += 10
	else: velocity.y = 10
	
	if Input.is_action_just_pressed("jump") && is_on_floor():
		velocity.y = -300
		
	
	if is_on_ceiling():
		velocity.y = 10

	move_and_slide(velocity, Vector2(0, -1), false)
	

func _process(delta):
	pass

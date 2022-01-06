extends KinematicBody2D
class_name Player

var velocity = Vector2(0, 0)
var startpos
var gravity = 10
var jumpspeed = 200
var friction = .89
var maxspeed = 250
var acceleration = maxspeed * (1 - friction)
var currentjump = 0
var maxjumptime =.2

var isjumping = false

func _ready():
	startpos = position
	

func die():
	velocity.y = 0
	position = startpos
	get_parent().get_node("Camera2D").set_position(startpos)
	get_parent().get_node("Camera2D").reset_smoothing()
	

func _physics_process(delta):
	
	velocity.y += gravity
	
	
	
	if Input.is_action_pressed("move_right"):
		$AnimatedSprite.animation = "walk"
		velocity.x += acceleration
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("move_left"):
		$AnimatedSprite.animation = "walk"
		velocity.x -= acceleration
		$AnimatedSprite.flip_h = true
	velocity.x *= friction
	

	
	
	if (is_on_floor() or isjumping && currentjump < maxjumptime )&& Input.is_action_pressed("jump"):
		velocity.y = -jumpspeed
		isjumping = true
		currentjump += delta
		$AnimatedSprite.animation = "jump"
	else:
		isjumping = false
		currentjump = 0
		
		


	velocity = move_and_slide(velocity, Vector2(0, -1), true, 6)





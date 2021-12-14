extends KinematicBody2D
class_name Player

var velocity = Vector2(0, 0)
var startpos
var gravity = 10
var jumpspeed = 270
var friction = .85
var maxspeed = 300
var acceleration = maxspeed * (1 - friction)
var currentjump = 0
var maxjumptime =.2

var isjumping = false

func _ready():
	startpos = position
	

func die():
	velocity.y = 0
	position = startpos
	$Camera2D.reset_smoothing()

func _physics_process(delta):
	
	velocity.y += gravity
	
	$AnimatedSprite.animation = "walk"
	
	if Input.is_action_pressed("move_right"):
		velocity.x += acceleration
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("move_left"):
		velocity.x -= acceleration
		$AnimatedSprite.flip_h = false
	velocity.x *= friction
	
	
	if (is_on_floor() or isjumping && currentjump < maxjumptime )&& Input.is_action_pressed("jump"):
		velocity.y = -jumpspeed
		isjumping = true
		currentjump += delta
	else:
		isjumping = false
		currentjump = 0


	velocity = move_and_slide(velocity, Vector2(0, -1), true, 6)





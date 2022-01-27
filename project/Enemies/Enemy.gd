extends KinematicBody2D
var velocity = Vector2(0, 0)
const Player = preload("res://Player/playerscene.gd")

func _ready():
	resetVelocity()
	$AnimationPlayer.play("walk")
	
func _physics_process(delta):
	if(!is_on_floor()):
		velocity.y += 15
	elif is_on_floor():
		velocity.y = 0.1
	
	if(is_on_wall()):
		velocity.x *= -1
	
	if velocity.x > 0:
		$Sprite.flip_h = true
	elif velocity.x < 0:
		$Sprite.flip_h = false
		
	move_and_slide(velocity, Vector2(0, -1))
	
func resetVelocity():
	velocity.x = rand_range(-20, 20)
	if(velocity.x >= 0):
		velocity.x += 50
	else:
		velocity.x -= 50
		
func _on_Area2D_body_entered(body):
	if body is Player:
		body.die()
		
func enemyDie():
	position = Vector2(rand_range(-1750, 1850), -600)

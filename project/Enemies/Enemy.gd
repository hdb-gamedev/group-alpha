extends KinematicBody2D
var velocity = Vector2(0, 0)

func _ready():
	resetVelocity()
	
func _physics_process(delta):
	if(!is_on_floor()):
		velocity.y += 15
	elif is_on_floor():
		velocity.y = 0.1
	if(velocity.x < 1):
		resetVelocity()
		
	move_and_slide(velocity, Vector2(0, -1))
	
func resetVelocity():
	velocity.x = rand_range(-20, 20)
	if(velocity.x >= 0):
		velocity.x += 50
	else:
		velocity.x -= 50
		

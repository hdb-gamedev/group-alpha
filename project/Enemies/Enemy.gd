extends KinematicBody2D
var speed = 5

func _ready():
	pass
	
func _physics_process(delta): 
	move_and_slide(Vector2(speed, -10))

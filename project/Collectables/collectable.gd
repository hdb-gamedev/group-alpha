extends Area2D


func _ready():
	pass

func onCollected():
	pass

func _on_Area2D_body_entered(body):
	onCollected()
	queue_free()

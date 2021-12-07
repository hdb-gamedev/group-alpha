extends "res://Collectables/collectable.gd"

func onCollected():
	signalbus.emit_signal("coinCollected")

extends Control

var coinAmount = 0;

func _ready():
	signalbus.connect("coinCollected", self, "signalFunction")
	
func signalFunction():
	coinAmount += 1
	$HBoxContainer/MarginContainer/Label.text = str(coinAmount)

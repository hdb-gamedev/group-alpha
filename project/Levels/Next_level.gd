extends Area2D

func _on_Hitbox_area_entered(area):
	if is_in_group("playerscene"):
		get_tree().change_scene("res://Levels/level_eric.tscn") 

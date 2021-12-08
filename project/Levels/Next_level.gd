extends Area2D



func _on_Hitbox_area_entered(area: Area2D) -> void:
	if area.name == "playerscene":
		get_tree().change_scene("res://Levels/level_eric.tscn")
			
		

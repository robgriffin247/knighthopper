class_name Killzone extends Area2D

	
func _on_body_entered(body: Node2D) -> void:
	print("death") # for debugging - had bug on respawn causing double-death
	
	PlayerGlobal.alive = false
	PlayerManager.player_spawned = false
	self.set_collision_mask_value(2, false)
	
	Engine.time_scale = 0.3
	await get_tree().create_timer(0.8).timeout

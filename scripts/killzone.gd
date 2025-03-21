class_name Killzone extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("death") # for debugging - had bug on respawn causing double-death
	
	# Die
	PlayerGlobal.alive = false
	self.set_collision_mask_value(2, false)
	Engine.time_scale = 0.3
	await get_tree().create_timer(1.0).timeout
	
	# Respawn
	#PlayerGlobal.alive = true
	#PlayerGlobal.score = 0
	#Engine.time_scale = 1.0
	#get_tree().reload_current_scene()
	

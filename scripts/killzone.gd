class_name Killzone extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	body.is_alive = false
	#Engine.time_scale = 0.4
	timer.start()


func _on_timer_timeout() -> void:
	#Engine.time_scale = 1.0
	Global.reset_score()
	Global.take_life()
	get_tree().reload_current_scene()

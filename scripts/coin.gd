class_name Coin extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	Global.add_score()
	animation_player.play("pickup")

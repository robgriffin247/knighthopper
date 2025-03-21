class_name Coin extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(_body: Node2D) -> void:
	PlayerGlobal.score += 1
	animation_player.play("pickup")

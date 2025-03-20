extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.lives == 2:
		self.get_node("Life3").visible = false
	if Global.lives == 1:
		self.get_node("Life3").visible = false
		self.get_node("Life2").visible = false

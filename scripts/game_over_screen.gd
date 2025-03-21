extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if PlayerGlobal.alive == false:
		await get_tree().create_timer(0.5).timeout
		self.visible = true
		


func _on_retry_button_pressed() -> void:
	PlayerGlobal.alive = true
	PlayerGlobal.score = 0
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

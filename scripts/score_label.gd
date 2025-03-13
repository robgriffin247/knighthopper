class_name score_label extends Label

var coins_count: int = 0

func _ready() -> void:
	coins_count = self.get_parent().get_node("Coins").get_child_count()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.score!=coins_count:
		self.text = str(Global.score) + " coins found..."
	else:
		self.text = "Congratulations!\nAll coins found :D"

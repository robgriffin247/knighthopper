extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:

	if PlayerGlobal.score == 0:
		self.text = "You collected no coins :("
	if PlayerGlobal.score == 1:
		self.text = "You collected 1 coin :D"
	if PlayerGlobal.score > 1:
		self.text = "You collected " + str(PlayerGlobal.score) + " coins :D"

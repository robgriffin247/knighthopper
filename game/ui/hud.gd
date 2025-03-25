extends Node2D

@onready var coins_label: Label = $Coins/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	coins_label.text = "× " + str(PlayerManager.coins)

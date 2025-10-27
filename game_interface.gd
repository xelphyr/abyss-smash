extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.player_ready.connect(func() : show())
	hide()

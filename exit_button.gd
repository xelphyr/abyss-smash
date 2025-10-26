extends Button




func _on_pressed() -> void:
	EventManager.game_exit.emit()

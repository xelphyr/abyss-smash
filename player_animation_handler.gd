extends AnimationPlayer



func _ready() -> void:
	EventManager.game_start.connect(_start_jump_cutscene)
	
func _start_jump_cutscene() -> void:
	play("Jump_Cutscene")

func _on_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Jump_Cutscene":
		print("woo")
		EventManager.player_ready.emit()

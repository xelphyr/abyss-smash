extends Area2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2(0, -PlayerVariables.fall_speed*delta)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") :
		EventManager.player_damaged.emit(PlayerVariables.default_obstacle_damage)

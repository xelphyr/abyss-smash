extends Area2D

enum PowerupType {Heal, Punch, Shield}

@export var powerup_type : PowerupType

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if powerup_type == PowerupType.Heal:
			EventManager.player_collected_heal.emit()
		if powerup_type == PowerupType.Punch:
			EventManager.player_collected_punch.emit()
		if powerup_type == PowerupType.Shield:
			EventManager.player_collected_shield.emit()
		queue_free()

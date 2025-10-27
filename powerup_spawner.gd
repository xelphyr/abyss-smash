extends Node2D

var powerups : Dictionary = {
	null : 200,
	preload("res://powerups/punch.tscn") : 80,
	preload("res://powerups/heal.tscn") : 40,
	preload("res://powerups/shield.tscn") : 20
	
}

var total_chance = 200 + 80 + 40 + 20

func _ready() -> void:
	var selected_powerup = randi_range(0, total_chance)
	var current_chance = 0
	for i in powerups.keys():
		current_chance += powerups[i]
		if current_chance > selected_powerup:
			selected_powerup = i
			break
	
	if selected_powerup is PackedScene:
		selected_powerup = selected_powerup.instantiate()
		selected_powerup.position = position
		get_parent().add_child.call_deferred(selected_powerup)
		queue_free()

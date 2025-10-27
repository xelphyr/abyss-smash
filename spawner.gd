extends Node2D

var can_spawn := false
@export var world_1_obstacles : Array[PackedScene] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.player_ready.connect(_start_spawning)

func _start_spawning() -> void:
	can_spawn = true
	$Timer.start()

func _on_timer_timeout() -> void:
	var obstacle = world_1_obstacles.pick_random()
	if obstacle:
		obstacle = obstacle.instantiate()
		obstacle.position = Vector2(0,0)
		add_child(obstacle)

extends Node2D


@export var cutscene_easing : Curve
var start_scroll = false
var curr_frame = 0
var scroll_speed: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.game_start.connect(func() : 
		print("autoscroll")
		start_scroll = true)

func _process(delta: float) -> void:
	if start_scroll and curr_frame < 5.0:
		position.y += -cutscene_easing.sample(curr_frame)*PlayerVariables.fall_speed*delta
		curr_frame += delta
	if curr_frame >= 5.0:
		queue_free()
		

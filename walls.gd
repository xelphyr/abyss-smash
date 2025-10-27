extends Parallax2D

@export var cutscene_easing : Curve
var start_autoscroll = false
var curr_frame = 0
var scroll_speed: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.game_start.connect(func() : 
		print("autoscroll")
		start_autoscroll = true)

func _process(delta: float) -> void:
	if start_autoscroll and curr_frame < 5.0:
		autoscroll.y = -cutscene_easing.sample(curr_frame)*PlayerVariables.fall_speed
		curr_frame += delta
	if curr_frame >= 5.0:
		repeat_times = 2
		

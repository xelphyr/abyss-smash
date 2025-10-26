extends CharacterBody2D

const SPEED = 300.0
var can_move = false

func _ready() -> void:
	EventManager.player_ready.connect(_player_start)


func _player_start() -> void:
	can_move = true
	print("move now")

func _physics_process(_delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if can_move:
		print("e")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

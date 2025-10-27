extends CharacterBody2D

var can_move = false

func _ready() -> void:
	EventManager.player_ready.connect(_player_start)


func _player_start() -> void:
	can_move = true

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("dash") && GameManager.request_stamina(PlayerVariables.dash_cost):
		velocity.x = direction * PlayerVariables.dash_speed
	elif can_move:
		if direction:
			velocity.x = direction * PlayerVariables.strafe_speed
		else:
			velocity.x = move_toward(velocity.x, 0, PlayerVariables.strafe_speed)

	move_and_slide()

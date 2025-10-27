extends Node

enum GameStates {MAINMENU, GAME, PAUSE, FAIL, EXIT}
var gamestate : GameStates = GameStates.MAINMENU

func _ready() -> void:
	EventManager.player_damaged.connect(_player_damaged)
	
func _process(delta: float) -> void:
	PlayerVariables.player_stamina = move_toward(PlayerVariables.player_stamina, PlayerVariables.max_player_stamina, PlayerVariables.stamina_regen*delta)
	PlayerVariables.currDepth += PlayerVariables.fall_speed*delta
	PlayerVariables.score += PlayerVariables.fall_speed*delta
	
func _player_damaged(amount : int) -> void :
	print("owie")
	PlayerVariables.player_health -= amount
	print(PlayerVariables.player_health)

func request_stamina(amount : int) -> bool:
	if PlayerVariables.player_stamina < amount:
		print("exhausted :(")
		return false
	else:
		print("lesgoo :>")
		PlayerVariables.player_stamina -= amount
		return true

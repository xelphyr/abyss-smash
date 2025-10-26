extends Node

enum GameStates {MAINMENU, GAME, PAUSE, FAIL, EXIT}
var gamestate : GameStates = GameStates.MAINMENU

func _ready() -> void:
	pass
	


func change_gamestate(new_state:int) -> void:
	gamestate = new_state

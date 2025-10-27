extends Node

signal game_start
signal game_paused
signal game_exit

#Player-related events
signal player_death
signal player_ready
signal player_damaged(amount: int)

signal player_collected_heal
signal player_collected_punch
signal player_collected_shield

signal player_used_heal
signal player_used_punch
signal player_used_shield

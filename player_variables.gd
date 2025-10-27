extends Node

var max_player_health := 10.0
var max_player_stamina := 5.0
var fall_speed := 1000.0
var strafe_speed := 300.0
var default_obstacle_damage := 1.0
var stamina_regen := 3.0

var currDepth := 0.0
var score := 0.0
#moves
var dash_speed := 3600.0
var dash_cost := 2.0

@onready var player_health := max_player_health
@onready var player_stamina := max_player_stamina

extends Label

var amount = 0

func _ready() -> void:
	EventManager.player_collected_punch.connect(increment)
	EventManager.player_used_punch.connect(decrement)
	
func increment() -> void:
	amount += 1
	text = str(amount)
	
func decrement() -> void:
	amount -= 1
	text = str(amount)

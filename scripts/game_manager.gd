extends Node

var score = 0
@onready var friend_count: Label = $"../Camera2D/Friend count"

func add_point():
	score +=  1;
	friend_count.text = "Friends Found: " + str(score) + "/4"
	
func _shortcut_input(inp):
	if inp.is_action_pressed("escape"):
		get_tree().quit()

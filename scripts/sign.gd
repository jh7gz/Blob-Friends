extends Area2D

@onready var locations: Label = $Locations
var inside = false

func _on_body_entered(body: Node2D) -> void:
	inside = true
		
func _on_body_exited(body: Node2D) -> void:
	inside = false
	locations.text = ""
	
func _shortcut_input(inp):
	if inp.is_action_pressed("interact") and inside:
		locations.text = "                               House >\nLake V\n                               Maze >"

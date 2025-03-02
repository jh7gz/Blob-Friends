extends CharacterBody2D

@export var SPEED = 7500

func _process(delta):
	
	var xdirection = Input.get_axis("ui_left", "ui_right")
	if xdirection:
		velocity.x = xdirection * SPEED * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var ydirection = Input.get_axis("ui_up", "ui_down")
	if ydirection:
		velocity.y = ydirection * SPEED * delta
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()

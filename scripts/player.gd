extends CharacterBody2D

@export var SPEED = 7500
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	
	var xdirection = Input.get_axis("left", "right")
	var ydirection = Input.get_axis("up", "down")
	
	if xdirection:
		velocity.x = xdirection * SPEED * delta
		if xdirection > 0:
			animated_sprite.play("WalkRight")
		elif xdirection < 0:
			animated_sprite.play("WalkLeft")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if ydirection:
		velocity.y = ydirection * SPEED * delta
		if ydirection > 0:
			animated_sprite.play("WalkDown")
		elif ydirection < 0:
			animated_sprite.play("WalkUp")
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	if !xdirection and !ydirection:
		animated_sprite.play("Idle")
		
	move_and_slide()

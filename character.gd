extends CharacterBody2D

@export var speed := 100/0.0166


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		#$SootSpriteImage.flip_h = true
		velocity.x = -speed * delta
	
	elif Input.is_action_pressed("right"):
		#$SootSpriteImage.flip_h = false
		velocity.x = speed * delta
	
	elif Input.is_action_pressed("up"):
		#$SootSpriteImage.flip_h = false
		velocity.y = -speed * delta
	
	elif Input.is_action_pressed("down"):
		#$SootSpriteImage.flip_h = false
		velocity.y = speed * delta
	
	else:
		if velocity.x > 0:
			velocity.x -= 0.15 * velocity.x * delta / 0.0166
		if velocity.x < 0:
			velocity.x -= 0.15 * velocity.x * delta / 0.0166
		if velocity.y > 0:
			velocity.y -= 0.15 * velocity.y * delta / 0.0166
		if velocity.y < 0:
			velocity.y -= 0.15 * velocity.y * delta / 0.0166
		if velocity.x == 0:
			pass ##animation.play("idle")
	move_and_slide()

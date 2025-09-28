extends CharacterBody2D

@export var speed := 50/0.0166


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("player_idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		velocity.x = -speed * delta
		$Sprite2D.flip_h = true
		$AnimationPlayer.play("player_walk")
	elif Input.is_action_pressed("right"):
		$AnimationPlayer.play("player_walk")
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
			$AnimationPlayer.play("player_idle")
	move_and_slide()

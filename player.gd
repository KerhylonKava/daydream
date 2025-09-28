extends CharacterBody2D

@export var speed := 50/0.0166


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$BrainSlayerWalk.visible = true
	$BrainSlayerWalk.flip_h = false
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		velocity.x = -speed * delta
		$BrainSlayerWalk.flip_h = true
		$BrainSlayerWalk.visible = true
		$BrainSlayerDiagonalAttack.visible = false
		$AnimationPlayer.play("player_walk")
		
	elif Input.is_action_pressed("right"):
		$BrainSlayerWalk.visible = true
		$AnimationPlayer.play("player_walk")
		$BrainSlayerDiagonalAttack.visible = false
		$BrainSlayerWalk.visible = true
		velocity.x = speed * delta
		$BrainSlayerWalk.flip_h = false
	
	
	elif Input.is_action_pressed("up"):
		#$SootSpriteImage.flip_h = false
		velocity.y = -speed * delta
		$BrainSlayerDiagonalAttack.visible = false
		$BrainSlayerWalk.visible = true
	
	elif Input.is_action_pressed("down"):
		#$SootSpriteImage.flip_h = false
		$BrainSlayerDiagonalAttack.visible = false
		velocity.y = speed * delta
	elif Input.is_action_pressed("x"):
		$BrainSlayerDiagonalAttack.visible = true
		$AnimationPlayer.play("player_attack")
		$BrainSlayerWalk.visible = false
	
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
			velocity.y -= 0.15 * velocity.y * delta / 0.0166
		if velocity.x and velocity.y == 0:
			$AnimationPlayer.play("player_idle")
	move_and_slide()

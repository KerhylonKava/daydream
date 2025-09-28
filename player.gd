extends CharacterBody2D


const SPEED = 300.0

func _ready() -> void:
	$AnimationPlayer.play("player_idle")
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		$SootSpriteImage.flip_h = true
		$AnimationPlayer.play("player_walk")
	if Input.is_action_pressed("right"):
		$AnimationPlayer.play("player_walk")


	move_and_slide()

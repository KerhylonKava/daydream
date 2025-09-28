extends Node2D

var player = null
var player_in_area = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("human_idle")
	self.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_area:
		$x.visible = true
		if Input.is_action_just_pressed("x"):
			self.visible = false
	elif !player_in_area:
		$x.visible = false
		#$QuestBoards.visible = false

func _on_area_2d_body_exited(body: Node2D) -> void:
	player_in_area = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	player_in_area = true
	player = body
	print("player in area")

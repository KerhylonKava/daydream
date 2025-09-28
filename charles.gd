extends Node2D
var player = null
var player_in_area = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("charles_animation")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_area:
		$Label.visible = true
	elif !player_in_area:
		$Label.visible = false
	
@onready var profile = 1
#@onready var taste : taste
#@onready var texture : texture
#@onready var personality : personality

#func refresh_tastes(profile):
#	if profile == 1:
#		texture = "crunchy"
#		personality = "scared"
#	elif profile == 2:
#		taste = "salty"
#		texture = "chewy"
#		personality = "violent"


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true
		player = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false

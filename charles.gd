extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("charles_animation")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
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

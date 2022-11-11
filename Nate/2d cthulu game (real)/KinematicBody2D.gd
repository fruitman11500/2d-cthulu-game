extends KinematicBody2D


onready var animation = $AnimatedSprite

func _ready():
	animation.animation = 'default'

extends KinematicBody2D

var velocity = Vector2()
var speed = 350
onready var sprite = $sprite

func _ready():
	sprite.animation = 'stand_right'
func get_input():
	if Input.is_action_pressed("down"):
		velocity.y = 1
		sprite.animation = 'down'
	elif Input.is_action_pressed('up'):
		velocity.y = -1 
		sprite.animation = 'up'
	else:
		velocity.y = 0
	if Input.is_action_pressed("left"):
		velocity.x = -1 
		sprite.animation = 'left'
	elif Input.is_action_just_released("left"):
		sprite.animation = 'stand_left'
	elif Input.is_action_pressed("right"):
		velocity.x = 1
		sprite.animation = 'right'
	elif Input.is_action_just_released("right"):
		sprite.animation = 'stand_right'
	else:
		velocity.x = 0
		

func _physics_process(delta):
	get_input()
	move_and_slide(velocity * speed)

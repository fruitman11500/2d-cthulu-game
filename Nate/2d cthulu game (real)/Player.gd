extends KinematicBody2D

var velocity = Vector2()
var speed = 350

func get_input():
	if Input.is_action_pressed("down"):
		velocity.y = 1
	elif Input.is_action_pressed('up'):
		velocity.y = -1 
	else:
		velocity.y = 0
	if Input.is_action_pressed("left"):
		velocity.x = -1 
	elif Input.is_action_pressed("right"):
		velocity.x = 1
	else:
		velocity.x = 0

func _physics_process(delta):
	get_input()
	move_and_slide(velocity * speed)

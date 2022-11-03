extends KinematicBody2D

var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("up"):
		velocity.y =-1
	if Input.is_action_pressed("down"):
		velocity.y =1
	if Input.is_action_pressed("left"):
		velcity.x =-1
	if Input.is_action_pressed("right")
		v

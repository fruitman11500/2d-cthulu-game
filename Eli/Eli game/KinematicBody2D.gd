extends KinematicBody2D

var velocity = Vector2()
var speed = 300 
func get_input():
	if Input.is_action_pressed("up"):
		velocity.y =-1
	if Input.is_action_pressed("down"):
		velocity.y =1
	if Input.is_action_pressed("left"):
		velocity.x =-1
	if Input.is_action_pressed("right"):
		velocity.x =1

func _physics_process(delta):
	get_input()
	move_and_slide(velocity*speed)
	

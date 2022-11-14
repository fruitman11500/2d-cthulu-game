extends KinematicBody2D
signal started 

var velocity = Vector2()
var speed = 200
onready var sprite = $sprite

func _ready():
	sprite.animation = 'stand_right'
	$Camera2D.zoom.x = 0.7
	$Camera2D.zoom.y = 0.7
	emit_signal('started')
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


func _on_Player_started():
	
	$Label.text = 'Use WASD to move'

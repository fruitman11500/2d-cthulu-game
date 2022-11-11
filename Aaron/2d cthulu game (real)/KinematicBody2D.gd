extends KinematicBody2D

var player_pos = 

func ai_get_direction():
	return player_position - self

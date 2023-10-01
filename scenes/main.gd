extends Node2D

var ball = preload("res://scenes/ball.tscn")

@onready var balls = $Balls
@onready var platform: CharacterBody2D = $Platform

var speed_ball = 70

const MAX_W = 800
const MAX_H = 600

func _process(delta):
	var total_balls = balls.get_child_count()
	if total_balls == 0:
		new_ball()
	
	ball_over_platform()

func new_ball():
	balls.add_child(ball.instantiate())

func ball_bounce():
	for b in balls.get_children():
		if !b.bouncing:
			b.linear_velocity = Vector2(0,0)
			b.bouncing = true
			b.apply_central_impulse(Vector2.UP * speed_ball)

func ball_over_platform():
	for b in balls.get_children():
		if !b.bouncing:
			b.position.x = platform.position.x + 64
			b.position.y = platform.position.y - 64
			b.force_update_transform()

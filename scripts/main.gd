extends Node


@onready var ball = $Ball
@onready var player = $Player


@export var initial_ball_offset: Vector2


var game_started = false


func _process(_delta):
	if Input.is_action_just_pressed("Start") and not game_started:
		game_started = true
		ball.start()
	if not game_started:
		attach_ball_to_player()


func attach_ball_to_player():
	ball.position = player.position + initial_ball_offset

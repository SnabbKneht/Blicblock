extends StaticBody2D


@onready var config = load("res://config.tres")


@export var player_width: float


func _process(_delta):
	var mouse_x = get_global_mouse_position().x
	var x_min = player_width / 2
	var x_max = config.screen_width - x_min
	position.x = clampf(mouse_x, x_min, x_max)

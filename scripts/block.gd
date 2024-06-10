class_name Block
extends StaticBody2D


const possible_regions = [
	Rect2(0, 0, 32, 32),
	Rect2(32, 0, 32, 32),
	Rect2(64, 0, 32, 32),
	Rect2(96, 0, 32, 32),
	Rect2(0, 32, 32, 32),
	Rect2(32, 32, 32, 32),
	Rect2(64, 32, 32, 32),
	Rect2(96, 32, 32, 32),
	Rect2(0, 64, 32, 32),
	Rect2(32, 64, 32, 32),
	Rect2(64, 64, 32, 32),
	Rect2(96, 64, 32, 32),
]


@onready var sprite = $Sprite2D


signal destroyed


func _ready():
	sprite.region_rect = possible_regions.pick_random()


func destroy():
	destroyed.emit()
	queue_free()

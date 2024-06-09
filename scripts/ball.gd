extends RigidBody2D


@export var start_force: float


func _ready():
	freeze = true

func start():
	freeze = false
	apply_impulse(Vector2(1, -1) * start_force)

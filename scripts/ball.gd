class_name Ball
extends RigidBody2D


@export var start_force: float


func _ready():
	freeze = true

func start():
	freeze = false
	apply_impulse(Vector2(1, -1) * start_force)


func _on_body_entered(body):
	if body is Block:
		body.destroy()

extends Area2D


signal missed


func _on_body_entered(body):
	if body is Ball:
		missed.emit()

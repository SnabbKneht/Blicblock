extends Control


@onready var start_button = $StartButton


func _on_start_button_pressed():
	SceneLoader.load_scene(SceneLoader.main_scene)

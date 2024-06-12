extends Node


var menu_scene = preload("res://scenes/menu.tscn").instantiate()
var main_scene = preload("res://scenes/main.tscn").instantiate()


var current_scene


func _ready():
	current_scene = get_tree().current_scene


func load_scene(scene):
	get_tree().root.add_child(scene)
	get_tree().root.remove_child(current_scene)
	current_scene = scene

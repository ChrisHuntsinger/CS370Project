extends Control

# Speed at which the credits scroll
const SCROLL_SPEED = 50

func _ready():
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	pass # Replace with function body.

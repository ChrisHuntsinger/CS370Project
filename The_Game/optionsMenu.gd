extends Control

var volume_increment = 0.1

func _on_back_pressed():
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://menu.tscn")




func _on_volume_pressed():
	get_tree().change_scene_to_file("res://credits.tscn")
	pass # Replace with function body.




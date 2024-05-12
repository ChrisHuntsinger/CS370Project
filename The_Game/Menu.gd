extends Control



func _on_start_pressed():
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://project.tscn")




func _on_options_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")
	pass # Replace with function body.



func _on_quit_pressed():
	pass # Replace with function body.
	get_tree().quit()


func _on_start_jump_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
	pass # Replace with function body.


func _on_start_pirate_pressed():
	get_tree().change_scene_to_file("res://Level_Test.tscn")
	pass # Replace with function body.

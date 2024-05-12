extends Node2D

@onready var collision_polygon_2d = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d = $StaticBody2D/CollisionPolygon2D/Polygon2D

func _ready():
	polygon_2d.polygon = collision_polygon_2d.polygon


func _on_graph_2_toggle_button_pressed():
	pass # Replace with function body.


func _on_main_m_enu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	pass # Replace with function body.

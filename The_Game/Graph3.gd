extends CollisionPolygon2D
@onready var graph_3 = $"."
@onready var graph_3_polygon = $Graph3Polygon

# Called when the node enters the scene tree for the first time.
func _ready():
	graph_3_polygon.polygon = graph_3.polygon
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func toggleCollision():
	self.disabled = !self.disabled


func _on_graph_3_toggle_button_pressed():
	pass # Replace with function body.

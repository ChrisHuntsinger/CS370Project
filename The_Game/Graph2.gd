extends CollisionPolygon2D
@onready var graph_2 = $"."
@onready var graph_2_polygon = $Graph2Polygon

# Called when the node enters the scene tree for the first time.
func _ready():
	graph_2_polygon.polygon = graph_2.polygon
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

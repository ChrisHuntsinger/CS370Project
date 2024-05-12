extends CollisionPolygon2D
@onready var graph_1 = $"."
@onready var graph_1_polygon = $Graph1Polygon



# Called when the node enters the scene tree for the first time.
func _ready():
	graph_1_polygon.polygon = graph_1.polygon
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

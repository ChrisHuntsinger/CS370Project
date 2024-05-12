extends Label

var score = 0
var high
# Called when the node enters the scene tree for the first time.
func _ready():
	# Find the StaticBody2D node in the scene
	var static_body_node = get_node("/root/main/Barrel")
	high = get_node("/root/main/High Score")
	text = str(score)
	# Connect to the custom signal emitted by the StaticBody2D
	static_body_node.hit.connect(_add_point)

func _add_point():
	# This function will be called when the static_body_entered signal is emitted
	score = int(text)
	score += 1
	text = str(score) 
	high._score_update(score)
	# You can add your logic here to respond to the signal
func _reset():
	score = 0
	text = str(score)

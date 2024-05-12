extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(0)
	var chest = get_node("/root/World/Treasure")
	chest.collect.connect(_add_score)
	pass # Replace with function body.
	
func _add_score():
	var score = int(text)
	score = score + 1
	text = str(score)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Label

var score = int(0)
# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(score) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _score_update(value: int):
	if value > int(text):
		text = str(value)

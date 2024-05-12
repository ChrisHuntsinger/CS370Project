extends Label

var lives = int(3)
var storage
# Called when the node enters the scene tree for the first time.
func _ready():
	text = str(lives)
	var score = get_node("/root/main/Score")
	storage = score
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _life_lost():
	lives += -1
	text = str(lives)
	if lives == 0:
		lives = 3
		text = str(lives)
		storage._reset()
		

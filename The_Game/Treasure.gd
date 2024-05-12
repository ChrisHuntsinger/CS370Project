extends StaticBody2D

signal collect
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	print(body.name)
	if body.name == "Player":
		emit_signal("collect")
		var randomx = randi() %(200+1)
		var randomy = randi() %(77+1)
		randomx += 50
		randomy += 70
		position.x = randomx
		position.y = randomy
	print(position.x)
	print(position.y)
	
	

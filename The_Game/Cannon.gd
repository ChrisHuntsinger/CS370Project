extends Node2D

@onready var main = get_tree().get_root().get_node("main")
@onready var projectile = load("res://cannon_ball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = "FIRE!"
	button.pressed.connect(self.launch)
	add_child(button) # Replace with function body.
	button.set_position(Vector2(-69,-100))

func launch():
	var live_count = main.get_node("Live Count")
	var score = main.get_node("Score")
	var slider = get_node("HSliderPower")
	var horizontal_velocity = (slider.value/100)*450
	var vertical_velocity = horizontal_velocity*-1
	var instance = projectile.instantiate()
	instance.dir = rotation
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	instance.initial_velocity = Vector2(horizontal_velocity,vertical_velocity)
	instance.name = "CannonBall"
	get_tree().current_scene.add_child(instance)
	instance.miss.connect(live_count._life_lost)
	
	#if character != null:
	#	character.initial_velocity = Vector2(200,-200)

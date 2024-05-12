extends CharacterBody2D

@export var SPEED = 100

signal miss

var dir : float
var spawnPos : Vector2
var spawnRot : float
var initial_position = Vector2(0, 0)
var initial_velocity  # Initial velocity (horizontal, vertical)
var gravity = 500  # Gravity value

var time_elapsed = 0

func _ready():
	initial_position = Vector2(200, 450)
	
func _process(delta):
		time_elapsed += delta

		# Calculate horizontal position
		var horizontal_position = initial_position.x + initial_velocity.x * time_elapsed

		# Calculate vertical position (using projectile motion equation)
		var vertical_position = initial_position.y + initial_velocity.y * time_elapsed + 0.5 * gravity * time_elapsed * time_elapsed

		# Update the object's position
		position.x = horizontal_position
		position.y = vertical_position
		if position.y > 700:
			emit_signal("miss")
			queue_free()
	


func _on_area_2d_body_entered(body):
	if body.name == "Barrel":
		var random_integer = randi() % (750 + 1)
		random_integer += -325
		
		# Change the position of the object to the new position
		body.position.x = random_integer
		body.emit_signal("hit")
		
		queue_free()
	 # Replace with function body.

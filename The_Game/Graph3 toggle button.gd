extends Button

# Reference to the associated CollisionPolygon2D node
var graph3Node: CollisionPolygon2D

func _ready():
	set_focus_mode(FOCUS_NONE)
	# Construct the node name
	var nodeName = "Graph" + str(get_index() + 1)
	print("Constructed node name:", nodeName)
	
	# Find the associated CollisionPolygon2D node
	graph3Node = get_parent().get_node(nodeName)
	if graph3Node == null:
		print("Node not found:", nodeName)
	else:
		print("Button ready, graphNode:", graph3Node)
		# Ensure the collision box is initially hidden
		graph3Node.visible = false
		# Ensure the collision is initially disabled
		graph3Node.disabled = true

func _on_pressed():
	if graph3Node:
		# Toggle visibility of the CollisionPolygon2D node
		graph3Node.visible = !graph3Node.visible 
		# Enable or disable collision based on visibility
		graph3Node.disabled = !graph3Node.visible

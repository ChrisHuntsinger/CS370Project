extends Button

# Reference to the associated CollisionPolygon2D node
var graph1Node: CollisionPolygon2D

func _ready():
	set_focus_mode(FOCUS_NONE)
	# Construct the node name
	var nodeName = "Graph" + str(get_index() + 1)
	print("Constructed node name:", nodeName)
	
	# Find the associated CollisionPolygon2D node
	graph1Node = get_parent().get_node(nodeName)
	if graph1Node == null:
		print("Node not found:", nodeName)
	else:
		print("Button ready, graphNode:", graph1Node)
		# Ensure the collision box is initially hidden
		graph1Node.visible = false
		# Ensure the collision is initially disabled
		graph1Node.disabled = true

func _on_pressed():
	if graph1Node:
		# Toggle visibility of the CollisionPolygon2D node
		graph1Node.visible = !graph1Node.visible 
		# Enable or disable collision based on visibility
		graph1Node.disabled = !graph1Node.visible






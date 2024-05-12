extends Button

# Reference to the associated CollisionPolygon2D node
var graph2Node: CollisionPolygon2D

func _ready():
	set_focus_mode(FOCUS_NONE)
	# Construct the node name
	var nodeName = "Graph" + str(get_index() + 1)
	print("Constructed node name:", nodeName)
	
	# Find the associated CollisionPolygon2D node
	graph2Node = get_parent().get_node(nodeName)
	if graph2Node == null:
		print("Node not found:", nodeName)
	else:
		print("Button ready, graphNode:", graph2Node)
		# Ensure the collision box is initially hidden
		graph2Node.visible = false
		# Ensure the collision is initially disabled
		graph2Node.disabled = true

func _on_pressed():
	if graph2Node:
		# Toggle visibility of the CollisionPolygon2D node
		graph2Node.visible = !graph2Node.visible 
		# Enable or disable collision based on visibility
		graph2Node.disabled = !graph2Node.visible

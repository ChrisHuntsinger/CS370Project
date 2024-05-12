extends Node2D


func generate_polynomial(difficulty):
	var polynomial: String
	var factor_one: int = 1
	var factor_two: int = 1
	var coefficient_one: int = 1
	var coefficient_two: int = 1
	var factor_one_sign: int = 1
	var factor_two_sign: int = 1
	if randi() % 2 == 0:
		factor_one_sign = -1
	if randi() % 2 == 0:
		factor_two_sign = -1;
	var front: int = 1
	var middle: int = 1
	var end: int = 1

	if difficulty == 1:
		factor_one = factor_one_sign * (randi() % 3 + 1)
		factor_two = factor_two_sign * (randi() % 3 + 1)
		end = factor_one * factor_two
		middle = factor_one + factor_two
	elif difficulty == 2:
		factor_one = factor_one_sign * (randi() % 3 + 4)
		factor_two = factor_two_sign * (randi() % 7 + 1)
		end = factor_one * factor_two
		middle = factor_one + factor_two
	elif difficulty == 3:
		factor_one = factor_one_sign * (randi() % 4 + 6)
		factor_two = factor_two_sign * (randi() % 7 + 3)
		end = factor_one * factor_two
		middle = factor_one + factor_two
	elif difficulty == 4:
		factor_one = factor_one_sign * (randi() % 3 + 1)
		factor_two = factor_two_sign * (randi() % 3 + 1)
		coefficient_one = randi() % 3 + 1
		coefficient_two = randi() % 3 + 1
		end = factor_one * factor_two
		middle = (coefficient_one * factor_one) + (coefficient_two * factor_two)
		front = coefficient_one * coefficient_two
	elif difficulty == 5:
		factor_one = factor_one_sign * (randi() % 3 + 4)
		factor_two = factor_two_sign * (randi() % 7 + 1)
		coefficient_one = randi() % 3 + 2
		coefficient_two = randi() % 3 + 1
		end = factor_one * factor_two
		middle = (coefficient_one * factor_one) + (coefficient_two * factor_two)
		front = coefficient_one * coefficient_two
	elif difficulty == 6:
		factor_one = factor_one_sign * (randi() % 4 + 6)
		factor_two = factor_two_sign * (randi() % 7 + 3)
		coefficient_one = randi() % 3 + 4
		coefficient_two = randi() % 5 + 1
		end = factor_one * factor_two
		middle = (coefficient_one * factor_one) + (coefficient_two * factor_two)
		front = coefficient_one * coefficient_two
	else:
		return "That is not a possible difficulty!"

	polynomial = str(front) + "x^2 + " + str(middle) + "x + " + str(end) + "\nThe answer is: " + "(" + str(coefficient_two) + "x + " + str(factor_one) + ")(" + str(coefficient_one) + "x + " + str(factor_two) + ")"
	return polynomial

func _ready():
	var difficulty: int = 1
	var lives: int = 3
	print("is this at least working")
	var Button := get_node("res://Button.gd")
	var X1 := get_node("res://X1.gd")

	while lives != 0:
		if Button.userInput:
			print("working")
			Button.userInput = false
	#var test: String = $X1.text
	#while lives != 0:
		#print("The polynomial you created is: ", generate_polynomial(difficulty))


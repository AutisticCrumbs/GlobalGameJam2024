extends Node2D

var pressed_count = 0
var left_button = true
var right_button = false

func _process(_delta):
	if (pressed_count % 2) == 0:
		$"Right Button".hide()
		$"Left Button".show()
	else:
		$"Left Button".hide()
		$"Right Button".show()

func _on_l_button_body_entered(_body):
	print("foo")
	pressed_count += 1

func _on_r_button_body_entered(_body):
	print("bar")
	pressed_count += 1

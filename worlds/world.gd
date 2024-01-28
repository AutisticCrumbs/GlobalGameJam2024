extends Node2D

@onready var _left_button := $"Left Button"
@onready var _top_left_collision := $"Left Button/Top of L Button/CollisionShape2D"
@onready var _left_pressable := $"Left Button/Left Button Pressable"
@onready var _left_base := $"Left Button/Left Button Base"

@onready var _right_button := $"Right Button"
@onready var _top_right_collision := $"Right Button/Top of R Button/CollisionShape2D"
@onready var _right_pressable := $"Right Button/Right Button Pressable"
@onready var _right_base := $"Right Button/Right Button Base"

@onready var button_count := $"Button Count"

var pressed_count = 9

func _process(_delta):
	if (pressed_count % 2) == 0:
		_hide_right_button()
		_show_left_button()
		_update_button_press_count()
	else:
		_hide_left_button()
		_show_right_button()
		_update_button_press_count()

func _show_left_button():
	_left_button.show()
	_top_left_collision.disabled = false
	_left_pressable.disabled = false
	_left_base.disabled = false

func _hide_left_button():
	_left_button.hide()
	_top_left_collision.disabled = true
	_left_pressable.disabled = true
	_left_base.disabled = true

func _show_right_button():
	_right_button.show()
	_top_right_collision.disabled = false
	_right_pressable.disabled = false
	_right_base.disabled = false

func _hide_right_button():
	_right_button.hide()
	_top_right_collision.disabled = true
	_right_pressable.disabled = true
	_right_base.disabled = true

func _update_button_press_count():
	button_count.text = "%d" % pressed_count

func _on_l_button_body_entered(_body):
	pressed_count += 1

func _on_r_button_body_entered(_body):
	pressed_count += 1

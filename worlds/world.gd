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

var pressed_count = 1

func _process(_delta):
	if (pressed_count % 2) == 0:
		_hide_left_button()
		_show_right_button()
		_update_button_press_count()
		_update_pressed_text()
	else:
		_hide_right_button()
		_show_left_button()
		_update_button_press_count()
		_update_pressed_text()

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

func _update_pressed_text():
	if pressed_count == 1:
		$PressedText1.show()
	if pressed_count == 2:
		$PressedText1.hide()
		$PressedText2.show()
	if pressed_count == 3:
		$PressedText2.hide()
		$PressedText3.show()
	if pressed_count == 4:
		$PressedText3.hide()
		$PressedText4.show()
	if pressed_count == 5:
		$PressedText4.hide()
		$PressedText5.show()
	if pressed_count == 6:
		$PressedText5.hide()
		$PressedText6.show()
	if pressed_count == 7:
		$PressedText6.hide()
		$PressedText7.show()
	if pressed_count == 8:
		$PressedText7.hide()
		$PressedText8.show()
	if pressed_count == 9:
		$PressedText8.hide()
		$PressedText9.show()
	if pressed_count == 10:
		$PressedText9.hide()
		$PressedText10.show()
	if pressed_count == 11:
		$PressedText10.hide()
	if pressed_count == 15:
		$PressedText11.show()
	if pressed_count == 16:
		$PressedText11.hide()
		$PressedText12.show()
	if pressed_count == 17:
		$PressedText12.hide()
		$PressedText13.show()
	if pressed_count == 18:
		$PressedText13.hide()
		$PressedText14.show()
	if pressed_count == 19:
		$PressedText14.hide()
	if pressed_count == 23:
		$PressedText15.show()
	if pressed_count == 24:
		$PressedText15.hide()
		$PressedText16.show()
	if pressed_count == 25:
		$PressedText16.hide()
		$PressedText17.show()
	if pressed_count == 26:
		$PressedText17.hide()
		$PressedText18.show()
	if pressed_count == 27:
		$PressedText18.hide()
		$PressedText19.show()
	if pressed_count == 28:
		$PressedText19.hide()
		$PressedText20.show()
	if pressed_count == 29:
		$PressedText20.hide()
		$PressedText21.show()
	if pressed_count == 30:
		$PressedText21.hide()
		$PressedText22.show()
	if pressed_count == 31:
		$PressedText22.hide()
		$PressedText23.show()
	if pressed_count == 32:
		$PressedText23.hide()
		$PressedText24.show()
	if pressed_count == 33:
		get_tree().change_scene_to_file("res://menus/game_over.tscn")

extends CharacterBody2D

@onready var _funny_animation := $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var _grounded = true

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(_delta):
	if not is_on_floor():
		_grounded = false
		velocity.y += gravity * _delta
		if velocity.y < 0:
			_funny_animation.play("mid_air")
			_funny_animation.flip_v = false
			_funny_animation.flip_h = velocity.x < 0
		if velocity.y >= 0:
			_grounded = true
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if velocity.x == 0 && velocity.y == 0:
		_funny_animation.play("idle")
	if velocity.x != 0 && _grounded == true:
		_funny_animation.play("walk")
		_funny_animation.flip_v = false
		_funny_animation.flip_h = velocity.x < 0
		

	move_and_slide()

extends CharacterBody2D

var speed = 500

const TOP_LIMIT = 20
const BOTTOM_LIMIT = 648
const LEFT_LIMIT = 50
const RIGHT_LIMIT = 1000

var previous_position = Vector2.ZERO  
var current_velocity = Vector2.ZERO   

func _physics_process(delta):
	var mousePosition = get_viewport().get_mouse_position()
	var movement = mousePosition - position

	current_velocity = (position - previous_position) / delta
	previous_position = position 

	move_and_collide(movement * delta * 20)
	
	position.x = clamp(position.x, LEFT_LIMIT, RIGHT_LIMIT)
	position.y = clamp(position.y, TOP_LIMIT, BOTTOM_LIMIT)

func get_current_velocity():
	return current_velocity  


	# velocity.y = 0
	# velocity.x = 0

	# if Input.is_action_pressed("ui_up"):
	# 	velocity.y = -1
	# elif Input.is_action_pressed("ui_down"):
	# 	velocity.y = 1
	# elif Input.is_action_pressed("ui_left"):
	# 	velocity.x = -1
	# elif Input.is_action_pressed("ui_right"):
	# 	velocity.x = 1    
	
	# velocity.y *= speed
	# velocity.x *= speed

	# move_and_collide(velocity * delta)

extends CharacterBody2D

var speed = 500
var player

func _ready():
	#player = get_parent().get_node("Player")
	pass
	
	
func setBallVelocity():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1

	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1

	velocity *= speed

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)

	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())    

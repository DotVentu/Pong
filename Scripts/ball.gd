extends CharacterBody2D

var speed = 500
var gameStarted = false

func _ready():
	velocity = Vector2.ZERO

func _physics_process(delta):
	if not gameStarted:  
		check_player_interaction()
	else:
		move_and_bounce(delta)

func check_player_interaction():
	var collision_info = move_and_collide(Vector2.ZERO)
	if collision_info and collision_info.get_collider().name == "Player":
		gameStarted = true

		var player_velocity = collision_info.get_collider().get_current_velocity()
		setBallVelocity(player_velocity)

func move_and_bounce(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())

func setBallVelocity(player_velocity):
	velocity = player_velocity.normalized() * speed

	if velocity.is_zero_approx():
		if randi() % 2 == 0:
			velocity.x = 1
		else:
			velocity.x = -1

		if randi() % 2 == 0:
			velocity.y = 1
		else:
			velocity.y = -1

		velocity = velocity.normalized() * speed

func reset_and_wait_for_player():
	velocity = Vector2.ZERO  
	gameStarted = false

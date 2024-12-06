extends Node2D

const CENTER = Vector2(500, 330)
var playerScore = 0
var computerScore = 0

func _on_goal_left_body_entered(body):
	computerScore += 1
	$ComputerScore.text = str(computerScore)
	reset()

func _on_goal_right_body_entered(body):
	playerScore += 1
	$PlayerScore.text = str(playerScore)
	reset()

func reset():
	$Ball.position = CENTER
	$Ball.call("setBallVelocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y

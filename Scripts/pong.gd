extends Node2D

const CENTER = Vector2(500, 324)

var playerScore = 0
var computerScore = 0

func _on_goal_left_body_entered(body):
	if body.name == "Ball":
		computerScore += 1
		$ComputerScore.text = str(computerScore)
		resetBall()

func _on_goal_right_body_entered(body):
	if body.name == "Ball":
		playerScore += 1
		$PlayerScore.text = str(playerScore)
		resetBall()

func resetBall():
	$Ball.position = CENTER
	$Ball.call("setBallVelocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y

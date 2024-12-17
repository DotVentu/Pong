extends Node2D

#variables
#data types
#
#@export var player : string = "Player"
#@export var name : string = "Godot" # string
#
#var speed : int = 20 # int
#
#var damage : float = 30.1 # float 
#
#const armor : float = 31.1 

#@export var isEnemy : bool = true # false

	# operators
	#var result = speed > 12
	#< >
	#> =
	#< =
	#= =
	#! =

	#print 
	#var total = damage - armor
	#name = "Go"

#@export var level : int = 5
#@export var levelLow : int = 10
#@export var levelUp : int = 1
	#if nivel > nivelUp:
		#print("level up")
	#elif nivel < nivelUp:
		#print("level low")

#var activateShield : bool = true

#@export var label: Label
#@export var inputText: TextEdit
#
#const messageWelcome: String = "Bienvenido puedes pasar"
#const messageRejected: String = "Lo siento no puedes entrar"
#const nonValidNumber: String = "Ese no es un nivel valido"
#
#@export var question: String = "Cual es tu nivel?"
#@export var levelmin: int = 30

var num: int = 0 

var arr = [80, 20, 30, 90, 78, 70]

#functions
func _ready():
		#var c: int = 0
	#for i in range(100):
		#c += 1
		#print(c)
	pass	

	
#func pmd():
	#for i in arr:
		#num += i
		#
	#print("s " + str(num / arr.size()))


func _process(delta):
	#writeYourLevel()
	pass

#func isLevelEnough(userLevel: int) -> bool:
	#return userLevel >= levelmin
#
#func updateLabelText(newText: String):
	#
	#if label == null:
		#label = createLabel()
	#
	#label.text = newText
#
#func createLabel() -> Label:
	#
	#var tempLabel : Label
	#tempLabel = Label.new()
	#add_child(tempLabel)
	#label = tempLabel	
	#
	#return tempLabel
	#
#
#func writeYourLevel():
	#var userInput = inputText.text
	#
	#var isValidLvl = userInput.is_valid_int()
	#
	#if isValidLvl:
		#var lvl = int(userInput)
		#if lvl >= levelmin:
			##updateLabelText(messageWelcome)
			#label.text = messageWelcome
		#else:
			##updateLabelText(messageRejected)
			#label.text = messageRejected
	#
	#elif not isValidLvl and userInput != "":
		#label.text = nonValidNumber
	#
	#else:
		#label.text = question



	#if Input.is_action_just_pressed("ui_accept"): #enter
		
		#if activateShield == true:
		#	activateShield == false #!activateShield
		#	print("activate")	

		#elif activateShield == false:
		#	activateShield = true 
		#	print("des")

		#if activateShield:
			#print("ac")
#
		#else !activateShield:
			#print("des")
		#
		#activateShield = !activateShield
#
		#print("press") 
	

	#if Input.is_action_just_pressed("ui_cancel"): #esc
		#print("press") 

	#var condition = activateShield

	# &&
	#if (level <= 9) and (level >= 5):
		#print("yes or no")
	
	#elif level >= 2:
		#print("need more", level)

	#elif level >= 1:
		#print("need more", level)

	#else:
		#print("no")

	# and(&&) or not
	#if activateShield and Input.is_action_just_pressed("ui_accept"):
		#print("go")
	
	#var message : String

	#if activateShield:
	#	message = "Shield on"
	# else:
	# 	message = "Shield off"

	# message = "Shield on" if (activateShield == true) else "Shield off"

	# print(message)

	# var num = 10
	
	# var sum = 5 + 5
	# num += 1
	# var r = 10 - 5
	# num -= 1
	# var m = 5 * 3
	# num *= 1
	# var d = 10 / 5 
	# num /= 1

	# var value = player + " is " + name
	# prints(player, name)

	# float()
	# int()
	# str()
	# bool()

	# var value = name + " " + str(speed) 
	# print(value)

	# var va = float("100.1")
	# prints(va)

	# var userInput: String = "1"
	# var conversion = int(userInput)
	# var value = bool(conversion)
	# print(value)

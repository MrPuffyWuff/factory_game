extends CharacterBody2D

@export var Velocity: Vector2 = Vector2(0, 0)
var speed: int = 100

func _ready() -> void:
	pass

func _physics_process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -1 * speed
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1 * speed
	elif Input.is_action_pressed("ui_down"):
		velocity.y = speed
	else:
		velocity.y = 0
	move_and_slide()

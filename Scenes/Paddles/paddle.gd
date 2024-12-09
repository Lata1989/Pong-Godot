extends RigidBody2D

@export var speed = 500

func _physics_process(delta: float) -> void:
	var movement = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	elif Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN
	
	linear_velocity = movement * speed



# Called when the node enters the scene tree for the first time.

#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

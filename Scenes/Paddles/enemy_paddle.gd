extends RigidBody2D

@export var paddle_speed = 3500
@export var ball: Ball

func _physics_process(delta: float) -> void:
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta * 12


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

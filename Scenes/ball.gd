extends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 20
@export var speed_multiplier = 1.02

var ball_speed = initial_ball_speed

@onready var hit_sound = $HitSound  # Referencia al nodo de audio

func _ready() -> void:
	start_ball()

func start_ball():
	randomize()
	velocity.x = [ -1, 1][randi() %2] * initial_ball_speed
	velocity.y = [ -0.8, 0.8][randi() %2] * initial_ball_speed

#ChatGPT
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * ball_speed * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
		if hit_sound.playing:  # Evitar superposiciones del sonido
			hit_sound.stop()
		hit_sound.play()  # Reproduce el sonido al colisionar


#func _physics_process(delta: float) -> void:
#	var collision = move_and_collide(velocity * ball_speed * delta)
#	if (collision):
#		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier

# Codigo por defecto.

#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0


#func _physics_process(delta: float) -> void:
#	# Add the gravity.
#	if not is_on_floor():
#		velocity += get_gravity() * delta

	# Handle jump.
#	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
#		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction := Input.get_axis("ui_left", "ui_right")
#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)

#	move_and_slide()

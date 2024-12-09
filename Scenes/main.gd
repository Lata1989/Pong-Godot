extends Node2D

var player_points = 0
var enemy_points = 0

@onready var enemy_paddle = $EnemyPaddle
@onready var player_paddle = $Paddle
@onready var ball = $Ball as Ball
@onready var ui = $UI as UI

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_enemy_scored() -> void:
	enemy_points += 1
	print_debug(enemy_points)
	ui.update_enemy_points(enemy_points)
	reset_game_state()


func _on_player_scored() -> void:
	player_points += 1
	print_debug(player_points)
	ui.update_player_points(player_points)
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 324
	player_paddle.global_position.y = 324
	ball.global_position = Vector2(576, 324)
	ball.velocity = Vector2.ZERO
	enemy_paddle.linear_velocity = Vector2.ZERO
	player_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()

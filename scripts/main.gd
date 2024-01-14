extends Node2D

var player_points = 0
var enemy_points = 0

@onready var player_paddle = $player_paddle
@onready var enemy_paddle = $enemy_paddle
@onready var ball = $ball

func _on_enemy_point_scored():
	enemy_points += 1
	print_debug("Enemy points: " + str(enemy_points))
	reset_game_state()


func _on_player_point_scored():
	player_points += 1
	print_debug("Player points: " + str(player_points))
	reset_game_state()

func reset_game_state():
	player_paddle.position.y = 0
	player_paddle.linear_velocity = Vector2.ZERO
	enemy_paddle.position.y = 0
	enemy_paddle.linear_velocity = Vector2.ZERO
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	ball.start_ball()

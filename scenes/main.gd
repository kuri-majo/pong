extends Node2D

var player_points = 0
var enemy_points = 0


func _on_enemy_point_scored():
	enemy_points += 1
	print_debug("Enemy points: " + str(enemy_points))


func _on_player_point_scored():
	player_points += 1
	print_debug("Player points: " + str(player_points))

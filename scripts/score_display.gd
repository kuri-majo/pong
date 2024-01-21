extends CanvasLayer

class_name UI

@onready var player_score = $score_container/player_score
@onready var enemy_score = $score_container/enemy_score

# Called when the node enters the scene tree for the first time.
func _ready():
	player_score.text = "%d" % 0
	enemy_score.text = "%d" % 0


func update_player_score(points: int):
	player_score.text = "%d" % points


func update_enemy_score(points: int):
	enemy_score.text = "%d" % points

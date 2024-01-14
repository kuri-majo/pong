extends Area2D

signal point_scored

func _on_body_entered(body):
	if body is Ball:
		print_debug("Ball entered out_zone.")
		point_scored.emit()

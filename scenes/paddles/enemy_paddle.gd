extends RigidBody2D

@export var enemy_paddle_speed = 35000
@export var ball: Ball

func _physics_process(delta):
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * enemy_paddle_speed * delta

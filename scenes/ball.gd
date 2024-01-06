extends CharacterBody2D

class_name Ball

@export var initial_speed = 20
@export var speed_multiplier = 1.02

var ball_speed = initial_speed

func _ready():
	start_ball()

func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	print(collision)
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
		
func start_ball():
	randomize()  # sets up time-based seed
	velocity.x = [-1, 1][randi() % 2] * initial_speed  # the_array[randi() % the_array.size()]
	print(velocity.x)
	velocity.y = [-0.8, 0.8][randi() % 2] * initial_speed
	print(velocity.y)
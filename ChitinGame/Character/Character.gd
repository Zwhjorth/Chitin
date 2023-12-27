extends CharacterBody2D
class_name Character


const SPEED = 300.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = direction.normalized() * SPEED

	move_and_slide()

extends RigidBody2D

var bouncing = false

# Gravity Scale = 0.4
# Physics Material
#	 Friction = 0
#	 Bounce = 1

func _physics_process(delta):
	# ???
	if abs(linear_velocity.y) < 100:
		if linear_velocity.y > -100:
			linear_velocity.y += -100
		elif linear_velocity.y < 100:
			linear_velocity.y += 100

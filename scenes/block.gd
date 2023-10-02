extends Area2D

func _on_body_entered(body):
	if body.is_in_group("ball"):
		body.linear_velocity = -body.linear_velocity * 1.05
		self.queue_free()

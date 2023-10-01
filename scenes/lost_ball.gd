extends Area2D

func _on_body_entered(body):
	if body.is_in_group("ball"):
		print("Ball lost under the platform")
		body.queue_free()

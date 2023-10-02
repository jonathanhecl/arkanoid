extends CharacterBody2D

func _physics_process(delta):
	var mouse = get_viewport().get_mouse_position()
	
	mouse.y = get_parent().MAX_H - (get_child(0).size.y*2)
	
	if mouse.x < 0:
		mouse.x = 0
	elif mouse.x > get_parent().MAX_W - (get_child(0).size.x):
		mouse.x = get_parent().MAX_W - (get_child(0).size.x)
	
	position = mouse

func _input(event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		get_parent().ball_bounce()

func _on_area_2d_body_entered(body):
	if body.is_in_group("ball"):
		pass

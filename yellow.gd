extends RigidBody2D


var game_manager: Node = null


	
func hit():
	game_manager.add_p()
	$AudioStreamPlayer2D.play()
	$Sprite2D.visible=false
	$CollisionShape2D.disabled=true
	await get_tree().create_timer(1).timeout
	queue_free()

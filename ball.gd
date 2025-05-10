extends CharacterBody2D

var spd = 200
var dir=Vector2.DOWN

func _ready() -> void:
	velocity=Vector2(-spd,spd).normalized()*spd

func _physics_process(delta: float) -> void:
	if velocity.y>0 and velocity.y<100:
		velocity.y=150
	var collision=move_and_collide(velocity*delta)
	if collision:
		$AudioStreamPlayer2D.play()
		velocity=velocity.bounce(collision.get_normal()).normalized()*spd
		var col=collision.get_collider()
		if col.has_method("hit"):
			col.hit()
		elif col.has_method("hit1"):
			col.hit1()
		
			
			
			
		
	


func _on_lower_bound_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()

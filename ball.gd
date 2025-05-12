extends CharacterBody2D
@onready var game_manager: Node = %gameManager
@onready var panel: CharacterBody2D = $"../panel"

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

		
			
			
			
		
	


func _on_lower_bound_body_entered(body: Node2D) -> void:
	game_manager.decrease_life()
	position.y=panel.position.y-20
	position.x=panel.position.x

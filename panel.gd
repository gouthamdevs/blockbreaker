extends CharacterBody2D
@onready var ball: CharacterBody2D = $"../ball"


const SPEED = 300.0


func _physics_process(delta: float) -> void:
	position.y=569
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x,0,10)
	velocity.y=0
	move_and_slide()

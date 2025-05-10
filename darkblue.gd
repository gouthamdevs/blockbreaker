extends RigidBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
var game_manager: Node = null
var count=1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func hit1():
	if count==1:
		animation_player.play("hit_1")
		count+=1
	elif count>1:
		audio_stream_player_2d.play()
		$Sprite2D.visible=false
		$CollisionShape2D.disabled=true
		await get_tree().create_timer(1).timeout
		queue_free()
	
	

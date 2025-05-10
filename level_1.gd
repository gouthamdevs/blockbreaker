extends Node

@onready var BLUE = preload("res://blue.tscn")
@onready var DARKBLUE = preload("res://darkblue.tscn")


@onready var block_container: Node = $blockContainer
var row=5
var col =12
var margin = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_blocks()
	

	
func spawn_blocks():

	for r in row:
		for c in col:
			var random =randi_range(0,4)
			if random>0 and random<=3:
				var block =BLUE.instantiate()
				block_container.add_child(block)
				block.game_manager = get_node("%gameManager")
				block.position=Vector2(margin+(64*c),margin+(24*r))
			elif random>3:
				var block =DARKBLUE.instantiate()
				block.game_manager = get_node("%gameManager")
				block_container.add_child(block)
				block.position=Vector2(margin+(64*c),margin+(24*r))
			
			
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

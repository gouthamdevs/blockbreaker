extends Node
@onready var label: Label = $"../CanvasLayer/Panel/Label"
@export var hearts:Array[Node]


var lives=3

var points=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func add_p():
	points+=1
	label.text="points:"+str(points)
	
func decrease_life():
	lives-=1
	death()
	
	for h in 3:
		if h<lives:
			hearts[h].show()
		else:
			hearts[h].hide()
			
func death():
	if lives<1:
		get_tree().reload_current_scene()	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

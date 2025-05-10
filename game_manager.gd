extends Node
@onready var label: Label = $"../CanvasLayer/Panel/Label"

var points=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func add_p():
	points+=1
	label.text="points:"+str(points)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

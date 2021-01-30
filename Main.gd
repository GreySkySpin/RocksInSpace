extends Node


onready var rocks = preload("res://rocks.tscn")
onready var lmao = preload("res://TestLmao.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	instance_create(rocks) #no idea, how 3d model scenes are instanced...
	instance_create(lmao) #test
	pass # Replace with function body.

func instance_create(scene):
	var id = scene.instance()
	add_child(id)
	#id.position = Vector2(x, y)
	return id

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

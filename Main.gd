extends Node

onready var screen_text = preload("res://ScreenText.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	instance_create(screen_text)
	pass # Replace with function body.

func instance_create(scene):
	var id = scene.instance()
	add_child(id)
	return id


#func movement(delta):
#	var direction = 
#
#func screen_wrap():
#	if position.x <= -10:
#		position.x = get_viewport_rect().size.x
#	if position.x >= get_viewport_rect().size.x + 10:
#		position.x = 0
#	if position.y <= -10:
#		position.y = get_viewport_rect().size.y
#	if position.y >= get_viewport_rect().size.y + 10:
#		position.y = 0
#		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

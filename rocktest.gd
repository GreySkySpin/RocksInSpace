extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _integrate_forces(state):
#	angular_velocity = Vector3(randf(),randf(),randf())
	state.linear_velocity = Vector3(randf(),randf(),randf())
	var pos2D = get_viewport().get_camera().unproject_position(self.translation)
	if pos2D.x <= -100:
		pos2D.x = get_viewport().get_visible_rect().size.x
	if pos2D.x >= get_viewport().get_visible_rect().size.x + 100:
		pos2D.x = 0
	if pos2D.y <= -100:
		pos2D.y = get_viewport().get_visible_rect().size.y
	if pos2D.y >= get_viewport().get_visible_rect().size.y + 100:
		pos2D.y = 0
	self.translation = get_viewport().get_camera().project_position(pos2D, self.translation.z)

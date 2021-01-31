extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
# PEM - set initial rotation and velocity vectors
func _ready():
	randomize()
#	angular_velocity = Vector3(randf(),randf(),randf())
#	angular_velocity = Vector3(0,0,0)
#	linear_velocity = Vector3(0,0,0)
#	linear_velocity = Vector3.ZERO;
#	angular_velocity = Vector3.ZERO;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func look_follow(state, current_transform, target_position):
#	var up_dir = Vector3(0, 1, 0)
#	var cur_dir = current_transform.basis.xform(Vector3(0, 0, 1))
#	var target_dir = (target_position - current_transform.origin).normalized()
#	var rotation_angle = acos(cur_dir.x) - acos(target_dir.x)

#	state.set_angular_velocity(up_dir * (rotation_angle / state.get_step()))

#func _integrate_forces(state):
#	var target_position = get_global_transform().origin
#	look_follow(state, get_global_transform(), target_position)

func _integrate_forces(state):
	angular_velocity = Vector3(randf(),randf(),randf())
	linear_velocity = Vector3(0.5,0.5,0.5)
	

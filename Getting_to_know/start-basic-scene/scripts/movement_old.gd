extends Node3D
@onready var sphere: CSGSphere3D = $sphere
@onready var sphere_2: CSGSphere3D = $sphere2
var _speed: float = 2.0
var _rotation_speed: float  = 180
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		#
		sphere.global_transform.basis = sphere_2.global_transform.basis.orthonormalized()
	#sphere.translate_object_local(Vector3.FORWARD * delta * -1)
	if Input.is_action_pressed("ui_up"):
		sphere.global_translate(Vector3.FORWARD * delta * -_speed)
		#sphere.global_translate(sphere.transform.basis.z * delta * _speed)
		#sphere.position += sphere.transform.basis.z * delta * _speed
	if Input.is_action_pressed("ui_down"):
		sphere.global_translate(Vector3.BACK * delta * -_speed)
	
	if Input.is_action_pressed("ui_left"):
		sphere.rotate_y(deg_to_rad(_rotation_speed) * delta)	
	if Input.is_action_pressed("ui_left"):
		sphere.rotate_y(deg_to_rad(-_rotation_speed)* delta)	
		
	

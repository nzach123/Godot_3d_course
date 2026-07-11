extends CharacterBody3D
@onready var camera_3d: Camera3D = $Camera3D
@onready var marker_3d: Marker3D = $Marker3D

signal spawn_snowball

@export var _speed: float = 5.0
@export var _jump_velocity: float = 4.5
@export var force: Vector3 = Vector3.ZERO
@onready var label: Label = $"../Label"

var MOUSE_SENSITIVITY: float = 0.001
var is_charging = false
var current_force = 0.0
var charge_speed = 800.0
var max_force = 1500
var min_force = 250
var charging_percentage = 0.0
var amount_of_snowballs: int = 3

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.relative.x * MOUSE_SENSITIVITY)
		camera_3d.rotate_x(-event.relative.y * MOUSE_SENSITIVITY)
		camera_3d.rotation.x = clamp(camera_3d.rotation.x, -1.5, 1.5)

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = _jump_velocity
	elif Input.is_action_pressed("fire"):
		start_charging()
	elif Input.is_action_just_released("fire"):
		if is_charging:
			launch()
			
		
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if is_charging:
		current_force = min(current_force + charge_speed * delta, max_force)
		charging_percentage = clampf(inverse_lerp(min_force, max_force, current_force), 0.0, 1.0)
		charging_percentage *= 100
		label.text = " %s/100" % int(charging_percentage)

		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * _speed
		velocity.z = direction.z * _speed
	else:
		velocity.x = move_toward(velocity.x, 0, _speed)
		velocity.z = move_toward(velocity.z, 0, _speed)

	move_and_slide()
	
func start_charging() -> void:
	is_charging = true
	
func reset_charge() ->void:
	current_force = 0.0
	charging_percentage = 0.0
	print("charge clear")
	label.text = " %s/100" % int(charging_percentage)

func launch() -> void:
	is_charging = false
	spawn_snowball.emit.call_deferred()
	print("launched")
	reset_charge()

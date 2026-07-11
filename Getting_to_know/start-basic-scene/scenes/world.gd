extends Node3D
const snow_ball_scene = preload("uid://bhm31dt0wce4o")
@onready var player: CharacterBody3D = $Player

signal spawn_snow_ball

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.spawn_snowball.connect(_spawn_snowball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _spawn_snowball() -> void:
	await get_tree().process_frame
	var spawn_pos = get_node("Player/Marker3D").global_position
	var snow_ball = snow_ball_scene.instantiate()
	
	snow_ball.position = spawn_pos
	add_child(snow_ball)
	var launch_direction = -player.global_transform.basis.z.normalized()
	var launch_force = 15.0
	
	snow_ball.apply_central_impulse(launch_direction*launch_force)
	

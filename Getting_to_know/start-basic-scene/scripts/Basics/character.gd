class_name  Character

static var character_count: int = 0
static func get_character_count() -> int:
	return character_count

var _health: int = 50
var _name: String = ""
var _weapon: String = ""

var health: int = 46 :
	get:
		return health
	set(value):
		health = clampi(value, 0, 100)

var name: String = "" :
	get:
		return name
	set(value):
		name = value
		
var weapon: String = "" :
	get:
		return weapon
	set(value):
		weapon = value
		
func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon

func get_health() -> int:
	return _health
	
func set_health(new_health: int) -> void:
	_health = clamp(new_health, 0, 100)
	

func print_health() -> void:
	print("health: %d" % health)
func say_info() -> void:
	print("name: " + name + " is holding: " + weapon)
	
		

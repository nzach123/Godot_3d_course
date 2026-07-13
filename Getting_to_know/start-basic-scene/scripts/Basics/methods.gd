@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	"""
	var n: int = 20
	change_number(n)
	
	roll_dice(10)
	var heath: int = get_plater_health()
	print("Health -> %s" % heath)
	attack_enemy(22, "Orc")

	var inv: Array = ["Shield"]
	print("Run start: ", inv)
	add_item(inv)
	print("Run end: ", inv)
	"""
	
	var current_health = 50
	var damage = randi_range(25, 50)
	current_health = takes_damage(current_health, damage)
	print(current_health)
	if current_health == 0:
		print("Game over")
	else:
		print("Still alive")
	
func roll_dice(sides: int)-> void:
	print("Rolling Dice...")
	var result: int = randi_range(1,sides)
	print("Rolled a %s" % result)

func get_plater_health() -> int:
	var p_health: int = randi_range(50, 100)
	return p_health
	
func attack_enemy(damage: int, enemy: String) -> void:
	print("attack %s -> " % enemy, damage)

func change_number(num: int)-> void:
	print("number start:", num)
	num += 10
	print("number end:", num)
	
func add_item(inventory: Array) -> void:
	print("add item start:", inventory)
	inventory.append("Sword")
	print("add item end:", inventory)
	
func takes_damage(current_health: int, damage: int) -> int:
	current_health -= damage
	if current_health < 0:
		current_health = 0
	return current_health

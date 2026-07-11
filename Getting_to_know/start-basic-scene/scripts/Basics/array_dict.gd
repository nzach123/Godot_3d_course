@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var rings_of_power: Array[String] = ["Elves", "Dwarves", "Men"]
	print(rings_of_power)
	
	rings_of_power.append("Hobbits")
	rings_of_power.append("Orcs")
	rings_of_power.append("Wizards")
	
	print(rings_of_power)
	#rings_of_power.erase("Elves")
	#print(rings_of_power)
	
	var d: String = rings_of_power[1]
	print(d)
	rings_of_power[1] = "Wargs"
	print(rings_of_power)
	print(rings_of_power.pick_random())
	rings_of_power.shuffle()
	print(rings_of_power)
	
	if "Men" in rings_of_power:
		print("The race of Men have the ring of power")
	
	for race in rings_of_power:
		print(race, " have a ring!")
	
	
	# By taking the current 'turn' modulo the size of the array, the index safely wraps back to 0 whenever it reaches the array's length. 
	# This allows the loop to continuously cycle through the elements.
	var total_turns: int = 27
	for turn in range(total_turns):
		var index = turn % rings_of_power.size()
		var member:String = rings_of_power[index]
		print("Turn: ", turn, " -> ", member)
		
	var level_items: Dictionary[int, String] = {
		1: "Wooden Sword",
		2: "Steel Knife",
		5: "Dwarven Axe",
		6: "Mithril Armor",
		7: "Anduril",
		9: "Ring of Power",
		10: "The One Ring"
	}
	
	var weapon = level_items[5]
	print(weapon)
	var level: int = 7
	if level_items.has(level):
		weapon = level_items[level]
	print(weapon)
	
	for level_key in level_items:
		print(level_key, " -> ", level_items[level_key])
		
	for level_item in level_items.values():
		print(level_item)
	
	# Replace the value at the assigned key	
	level_items[5] = "Elven Bow"
	print(level_items)
	
	# Removes the key from the dictionary
	level_items.erase(9)
	print(level_items)	
	
	var character_info_dict: Dictionary[String, String] = {
		"name": "Frodo",
		"race": "Hobbit",
		"weapon": "Sting"
	}
	
	# Accesing a dictionary
	print(character_info_dict["name"])
	print(character_info_dict.race)
		
	character_info_dict["town"] = "Hobbiton"
	
	print(character_info_dict)
	
	var fellowship_dict: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit", "weapon": "Sting"},
		"Sam": {"race": "Hobbit", "weapon": "Cooking Pan"},
		"Gandalf": {"race": "Wizard", "weapon": "Glamdring"},
		"Aragorn": {"race": "Human", "weapon": "Andúril"},
		"Legolas": {"race": "Elf", "weapon": "Bow and Daggers"},
		"Gimli": {"race": "Dwarf", "weapon": "Battle Axe"},
		"Boromir": {"race": "Human", "weapon": "Shield and Sword"},
		"Merry": {"race": "Hobbit", "weapon": "Dagger"},
		"Pippin": {"race": "Hobbit", "weapon": "Dagger"}
	}
	print(fellowship_dict["Aragorn"]["weapon"])
	

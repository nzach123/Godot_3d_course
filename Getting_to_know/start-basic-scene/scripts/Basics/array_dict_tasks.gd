@tool
extends EditorScript



var inventory: Array[String] = ["Stick", "Apple", "Torch"]

"""
Add "Sword" and "Shield" to the inventory.
Remove "Apple" from the inventory.
Check if "Sword" is in the inventory — print "You are armed!" if it is, otherwise "Find a weapon!".
Use a for loop to print all items in the inventory.
"""

var heroes: Dictionary[String, Dictionary] = {
	"Frodo": {"race": "Hobbit", "weapon": "Sting"},
	"Aragorn": {"race": "Human", "weapon": "Andúril"},
	"Legolas": {"race": "Elf", "weapon": "Bow"}
}

"""
Add Gimli to the dictionary with race "Dwarf" and weapon "Axe".
Change Legolas’s weapon to "Longbow".
Print Aragorn’s weapon.
Use a for loop to print all races and weapons.
"""

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	inventory.append("Sword")
	inventory.append("Shield")
	inventory.erase("Apple")
	if "Sword" in inventory:
		print("You are armed")
	for item in inventory:
		print(item)
	print(inventory)
	
	heroes["Gimili"] = {"race": "Dwarf", "weapon": "Axe"}
	heroes.Legolas.weapon = "Longbow"
	print(heroes)
	print(heroes["Aragorn"]["weapon"])
	
	for details in heroes.values():
		var race: String = details.race
		print(details.race, " -> ", details.weapon)

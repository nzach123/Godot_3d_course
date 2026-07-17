@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	#var aragon: Character = Character.new(100, "aragon", "sword")
	##aragon.health = 100
	##aragon.name = "aragon"
	##aragon.weapon = "sword"
	#aragon.health = -200
	#aragon.health += 200
	#
	#aragon.print_health()
	#aragon.say_info()
	#
	#var frodo: Character = Character.new(95, "frodo", "None")
	##frodo.health = 95
	#
	
	var aragon: Character = Character.new(100, "aragon", "sword")
	var frodo: Hero = Hero.new(100, "frodo", "dagger")
	var gimli: Character = Character.new(100, "gimili", "axe")
	frodo.say_info()
	

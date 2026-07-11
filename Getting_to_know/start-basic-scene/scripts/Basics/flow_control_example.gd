@tool
extends EditorScript

var orc_army: int = 300
var reinforcment_per_wave: int = 50
var max_army_size: int = 500
var battle_location: String = "Helms Deep"


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	if battle_location == "Helms Deep":
		print("Man the walls!")
	elif battle_location == "Minas Tirith":
		print("Light the beacons!")
	else:
		print("Scout the area!")
	while orc_army < max_army_size:
		orc_army += reinforcment_per_wave
		print("orc army: ", orc_army)
	for wave in range(5,0,-1):
		print(wave)
		if wave == 1:
			print("Seige commencing")

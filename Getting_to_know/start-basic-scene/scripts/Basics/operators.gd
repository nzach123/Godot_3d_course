@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var orcs: int = 200
	var elves: int = 150
	var total_warriors: int = orcs + elves
	print("total warrior: ", total_warriors)
	
	var orc_casulties: int = orcs - 50
	print("orc_casulties: ", orc_casulties)
	
	var total_arrows_needed: int = elves * 2
	print("total_arrows_needed: ", total_arrows_needed)
	
	var elves_lost: float = elves / 4.0
	print("evles_lost: ", elves_lost)
	
	var rings: int = 9
	var fellowship: int = 7
	var leftover_rings:= rings % fellowship
	print(leftover_rings)
	

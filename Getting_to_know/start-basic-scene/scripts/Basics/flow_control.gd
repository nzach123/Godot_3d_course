@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var ring_bearer = "Frodo"
	
	if ring_bearer == "Frodo":
		print("%s has the ring" % ring_bearer)
	else:
		print("Gollum has the ring")
	
	
	var arrows = 10
	while arrows > 0:
		arrows -= 1
		if arrows == 7:
			print("Reload")
			print(arrows)
			continue
		print(arrows)
	var fellowship: Array[String] = [
		"Frodo", "Sam", "Aragorn", "Gimli", "Legolas",
		"Gandalf", "Boromir", "Merry", "Poppin"
	] 
	print(fellowship)
	for member in fellowship:
		if member == "Frodo":
			print("%s is the ring bearer." % member)
		else:
			print("%s is part of the fellowship" % member)
		
	for orc in range(10):
		print("orc: ", orc)

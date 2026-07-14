@tool
extends EditorScript

enum Race { HOBBIT, ELF, DWARF, HUMAN, ORC, WIZARD }
enum State { IDLE, RUN, JUMP, DEAD }
# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var player_race:Race = Race.DWARF
	var player_state: State = State.RUN
	
	if player_race == Race.DWARF:
		print(player_state)
		
	print(Race.keys()[player_race])
	print(State.keys()[player_state])
	identify_race(Race.HUMAN)
	
var player_name = "Hero"
var level = 5

# Single variable
var greeting = "Hello, %s!" % player_name

# Multiple variables (requires an array)
var status = "Player %s is level %d." % [player_name, level]

var speed = 14.23894

# Output: "Speed: 14.24" (automatically rounds up)	
var display_speed = "Speed: %.2f" % speed 


var score = 350
var time_left = 9

# Zero-pad an integer to 6 digits
var UI_score = "Score: %06d" % score      # Output: "Score: 000350"

# Zero-pad a timer
var UI_timer = "00:%02d" % time_left      # Output: "00:09"

var health_pct = 85.5
var health_text = "Health: %.1f%%" % health_pct  # Output: "Health: 85.5%"

var data = {
	"item": "Iron Sword",
	"cost": 150
}

# Output: "The Iron Sword costs 150 gold."
var shop_text = "The {item} costs {cost} gold.".format(data)

var stats = ["Godette", 100, 50]

# Output: "Name: Godette | HP: 100/50"
var banner = "Name: {0} | HP: {1}/{2}".format(stats)


func identify_race(the_race: Race) -> void:
	
	match the_race:
		Race.HOBBIT:
			print("Race.HOBBIT")
		Race.DWARF, Race.HUMAN:
			print("Race.DWARF / Race.HUMAN")
		Race.ELF:
			print("Race.ELF")
		_:
			print("Race is not what we need")
			
			
	#if the_race == Race.HOBBIT:
		#print("The race is a Hobbit")
		

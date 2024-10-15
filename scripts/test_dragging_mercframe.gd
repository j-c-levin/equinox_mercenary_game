extends Node

@onready var opportunities = %Opportunities
@onready var roster = %Roster

# Callesd when the node enters the scene tree for the first time.
func _ready():
	await get_tree().process_frame
	opportunities.add_merc_frames_to_three()
	opportunities.start_timer()
	

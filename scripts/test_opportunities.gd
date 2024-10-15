extends Node

@onready var toggle_once = %"toggle once"
@onready var toggle_timer = %"toggle timer"

@onready var opportunities = %Opportunities
@onready var opportunities_2 = %Opportunities2
@onready var opportunities_3 = %Opportunities3
@onready var opportunities_4 = %Opportunities4

@onready var opportunities_5 = %Opportunities5
@onready var opportunities_6 = %Opportunities6
@onready var opportunities_7 = %Opportunities7
@onready var opportunities_8 = %Opportunities8

func _ready():
	toggle_once.pressed.connect(toggle_once_pressed)
	toggle_timer.pressed.connect(timeout_pressed)
	await get_tree().process_frame
	opportunities_2.add_n_merc_frames(1)
	opportunities_3.add_n_merc_frames(2)
	opportunities_4.add_n_merc_frames(3)
	opportunities_6.add_n_merc_frames(1)
	opportunities_7.add_n_merc_frames(2)
	opportunities_8.add_n_merc_frames(3)

func toggle_once_pressed():
	opportunities.add_merc_frames_to_three()
	opportunities_2.add_merc_frames_to_three()
	opportunities_3.add_merc_frames_to_three()
	opportunities_4.add_merc_frames_to_three()
	
func timeout_pressed():
	opportunities_5.start_timer()
	opportunities_6.start_timer()
	opportunities_7.start_timer()
	opportunities_8.start_timer()


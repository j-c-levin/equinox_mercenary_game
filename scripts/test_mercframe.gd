extends Node2D

@onready var merc_frame = %MercFrame
@onready var merc_frame_2 = %MercFrame2
@onready var merc_frame_3 = %MercFrame3

@onready var merc_frame_4 = %MercFrame4
@onready var merc_frame_5 = %MercFrame5
@onready var merc_frame_6 = %MercFrame6

# Called when the node enters the scene tree for the first time.
func _ready():
	merc_frame.set_content("1", "Paladin", "Forest", "2")
	merc_frame_2.set_content("2", "Shadow", "Urban", "5")
	merc_frame_3.set_content("3", "Tyrant", "Plains", "9")
	
	merc_frame_4.shop_mode()
	merc_frame_5.roster_mode()
	merc_frame_6.job_mode()

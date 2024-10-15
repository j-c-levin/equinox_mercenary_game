extends Node

@onready var merc_frame: PanelContainer = %MercFrame
@onready var merc_frame_2: PanelContainer = %MercFrame2
@onready var merc_frame_3: PanelContainer = %MercFrame3

@onready var merc_frame_4: PanelContainer = %MercFrame4
@onready var merc_frame_5: PanelContainer = %MercFrame5
@onready var merc_frame_6: PanelContainer = %MercFrame6

# Called when the node enters the scene tree for the first time.
func _ready():
	merc_frame.set_content("1", "Paladin", "Forest", "2")
	merc_frame_2.set_content("2", "Shadow", "Urban", "5")
	merc_frame_3.set_content("3", "Tyrant", "Plains", "9")
	
	merc_frame_4.shop_mode()
	merc_frame_5.roster_mode()
	merc_frame_6.job_mode()

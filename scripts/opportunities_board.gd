extends PanelContainer

# Assuming MercFrame is the type of the scenes you want to instantiate.
# You should replace "MercFrame.tscn" with the actual path to your merc frame scene file.
@export var MercFrameScene: PackedScene
@onready var vbox = %VBoxContainer
@onready var timer = %Timer

func _ready():
	# Reset the merc frames on initialization
	reset_merc_frames()
	timer.timeout.connect(timeout)
	
# Function to clear existing merc frames and instantiate up to 3
func reset_merc_frames():
	# Remove all existing merc frames
	for child in vbox.get_children():
		child.queue_free()

	# Fetch the current number of merc frames and instantiate new ones to make up to 3
	add_merc_frames_to_three()

# Function to ensure there are 3 merc frames present
func add_merc_frames_to_three():
	var current_count = vbox.get_child_count()

	for i in range(current_count, 3):
		var merc_frame = MercFrameScene.instantiate()
		merc_frame.modulate.a = 0.0  # Make it fully transparent initially (assuming it's a Control node)
		var tween = create_tween()
		tween.tween_property(merc_frame, "modulate:a", 1.0, 0.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EaseType.EASE_IN_OUT)
		vbox.add_child(merc_frame)
		
func add_n_merc_frames(n: int):
	var current_count = vbox.get_child_count()

	for i in range(current_count, n):
		var merc_frame = MercFrameScene.instantiate()
		merc_frame.modulate.a = 0.0  # Make it fully transparent initially (assuming it's a Control node)
		var tween = create_tween()
		tween.tween_property(merc_frame, "modulate:a", 1.0, 0.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EaseType.EASE_IN_OUT)
		vbox.add_child(merc_frame)

func start_timer():
	timer.start()
	
func timeout():
	add_merc_frames_to_three()

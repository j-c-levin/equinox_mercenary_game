extends PanelContainer

@onready var h_box_container = %HBoxContainer
const MERC_FRAME = preload("res://scenes/merc_frame.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	# Loop through each child in the HBoxContainer and queue them for deletion
	for child in h_box_container.get_children():
		child.queue_free()

func _can_drop_data(_at_position: Vector2, data: Variant) -> bool:
	return true

func _drop_data(_at_position: Vector2, data: Variant) -> void:
	var merc = MERC_FRAME.instantiate()
	#merc.set_content(str(data["rating"]),data["type"],data["affinity"],str(data["cost"]))
	h_box_container.add_child(MERC_FRAME.instantiate())

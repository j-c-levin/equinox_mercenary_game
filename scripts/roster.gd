extends PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	# Assuming the HBoxContainer is the first child of the PanelContainer
	var hbox_container: Node = get_node("HBoxContainer")

	# Loop through each child in the HBoxContainer and queue them for deletion
	for child in hbox_container.get_children():
		child.queue_free()

func _can_drop_data(_at_position: Vector2, data: Variant) -> bool:
	return true

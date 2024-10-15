extends PanelContainer

@onready var h_box_container = %HBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	# Loop through each child in the HBoxContainer and queue them for deletion
	for child in h_box_container.get_children():
		child.queue_free()

func _can_drop_data(_at_position: Vector2, data: Variant) -> bool:
	return true


func _drop_data(_at_position: Vector2, data: Variant) -> void:
	var dictionary = data.rating_int
	var new_source = data["cost"]
	new_source.rect_position = position
	h_box_container.add_child(new_source)

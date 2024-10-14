extends PanelContainer

@onready var rating: Label = %rating as Label
@onready var type: Label = %type
@onready var affinity: Label = %affinity
@onready var cost: Label = %"cost"

var rating_int: int      = 0
var type_str: String     = ""
var affinity_str: String = ""
var cost_int: int        = 0

enum Field { RATING, TYPE, AFFINITY, COST }

func set_content (rating_text: String, type_text: String, affinity_text: String, cost_text: String) -> void:
	rating_int = rating_text.to_int()
	rating.text = rating_text + "⁂"
	
	type_str = type_text
	type.text = type_text
	
	affinity_str = affinity_text
	affinity.text = affinity_text
	
	cost_int = cost_text.to_int()
	cost.text = cost_text + "₵"

func get_content(label_enum: Field) -> String:
	match label_enum:
		Field.RATING:
			return str(rating_int)
		Field.TYPE:
			return type_str
		Field.AFFINITY:
			return affinity_str
		Field.COST:
			return str(cost_int)
		_:
			push_warning("Invalid label enum")
			return ""

func shop_mode():
	show_all()
	
func roster_mode():
	show_all()
	cost.visible = false
	
func job_mode():
	show_all()
	cost.visible = false
	modulate =  Color(0.5, 0.5, 0.5, 0.5)
	
func show_all():
	rating.visible = true
	type.visible = true
	affinity.visible = true
	cost.visible = true

extends Area3D

@onready var player_node = $Player

signal left_area

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		left_area.connect(player_node._on_area_left)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area3D) -> void:
	left_area.emit()

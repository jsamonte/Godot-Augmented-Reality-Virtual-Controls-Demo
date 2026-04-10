extends Area3D

@onready var player_node = $Player

signal right_area
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	right_area.connect(player_node._on_area_right)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	


func _on_area_entered(area: Area3D) -> void:
	right_area.emit()

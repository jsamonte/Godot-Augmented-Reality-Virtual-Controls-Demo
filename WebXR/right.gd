extends Area3D

signal right_area
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene_resource = preload("res://Scenes/Prefabs/player.tscn")
	var scene_instance = scene_resource.instantiate()
	var specific_node = scene_instance.get_node(".")
	right_area.connect(specific_node._on_area_right)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	


func _on_area_entered(area: Area3D) -> void:
	right_area.emit()

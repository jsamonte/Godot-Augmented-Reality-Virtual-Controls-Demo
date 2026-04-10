extends Area3D

var specific_node

signal jump_area

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene_resource = preload("res://Scenes/Prefabs/player.tscn")
	var scene_instance = scene_resource.instantiate()
	specific_node = scene_instance.get_node(".")
	jump_area.connect(specific_node._on_area_jumping)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_area_entered(area: Area3D) -> void:
	specific_node.area_jumping

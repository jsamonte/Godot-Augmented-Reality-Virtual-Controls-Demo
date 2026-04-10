extends Area3D

var specific_node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene_resource = preload("res://Scenes/Prefabs/player.tscn")
	var scene_instance = scene_resource.instantiate()
	specific_node = scene_instance.get_node(".")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_area_entered(area: Area3D) -> void:
	Input.action_press("Jump")


func _on_area_exited(area: Area3D) -> void:
	Input.action_release("Jump")

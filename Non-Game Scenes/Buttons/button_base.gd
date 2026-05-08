extends TextureButton

@export var where_to : String;

func _ready() -> void:
	self.pressed.connect(button_action);


func button_action() -> void:
	get_tree().change_scene_to_file(where_to);

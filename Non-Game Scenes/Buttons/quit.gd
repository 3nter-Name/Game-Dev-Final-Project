extends TextureButton

func _ready() -> void:
	self.pressed.connect(quit_button);

func quit_button() -> void:
	get_tree().quit(0);

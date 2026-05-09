extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var first_room = preload("res://Levels/level_1.tscn");
	var room = first_room.instantiate();
	add_child(room);
	room.init($Player);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func move_on() -> void:
	var next_room = preload("res://Levels/level_2.tscn");
	var room = next_room.instantiate();
	remove_child(get_child(2));
	add_child(room);
	room.init($Player);

func success() -> void:
	get_tree().change_scene_to_file("res://Non-Game Scenes/Success.tscn");

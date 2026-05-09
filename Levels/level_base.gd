extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func init(PLAYER : CharacterBody2D) -> void:
	PLAYER.position = $Spawn.position;

func move_on() -> void:
	get_parent().get_parent().move_on();

func fail() -> void:
	get_parent().get_parent().fail();

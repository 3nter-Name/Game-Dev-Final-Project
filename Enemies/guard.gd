extends CharacterBody2D

const SPEED = 150

var playerFound = false;

@onready var sprite = $AnimatedSprite2D;
@onready var target = "Left";

func _physics_process(delta):
	velocity.x = 0;
	
	var direction;
	if target == "Left":
		direction = -1;
		$AnimatedSprite2D.flip_h = true;
	else:
		direction = 1;
		$AnimatedSprite2D.flip_h = false;
	
	velocity.x = direction * SPEED;
	
	move_and_slide();


func _on_detection_l_body_entered(body: Node2D) -> void:
	if sprite.flip_h:
		if body.is_in_group("player"):
			get_parent().get_parent().fail();


func _on_detection_r_body_entered(body: Node2D) -> void:
	if !sprite.flip_h:
		if body.is_in_group("player"):
			get_parent().get_parent().fail();

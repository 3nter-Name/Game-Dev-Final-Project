extends Node2D


func _on_marker_l_body_entered(body: Node2D) -> void:
	if body.is_in_group("Self"):
		body.target = "Right";
		body.sprite.flip_h = true;


func _on_marker_r_body_entered(body: Node2D) -> void:
	if body.is_in_group("Self"):
		body.target = "Left";
		body.sprite.flip_h = false;

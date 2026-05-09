extends CharacterBody2D


const SPEED = 300.0
const PUSH_FORCE = 15.0;
const MIN_PUSH_FORCE = 10.0;

func _physics_process(delta: float) -> void:
	
	velocity = Input.get_vector("Move_Left", "Move_Right", "Move_Up", "Move_Down") * SPEED;
	
	if velocity.x != 0:
		$AnimatedSprite2D.play("Walk");
		$AnimatedSprite2D.flip_h = velocity.x < 0;
	else:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.frame = 0;
	
	move_and_slide();
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i);
		
		if collision.get_collider() is RigidBody2D:
			var push_force = (PUSH_FORCE * velocity.length() / SPEED) + MIN_PUSH_FORCE;
			collision.get_collider().apply_central_impulse(-collision.get_normal() * push_force);

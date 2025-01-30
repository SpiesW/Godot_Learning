extends CharacterBody2D


var direction: Vector2 = Vector2.ZERO
var speed: int = 300

func _physics_process(delta: float) -> void:
	gravity(delta)
	direction = Input.get_vector("Left", "Right", "Dummy", "Dummy")
	if Input.is_action_just_pressed("Jump"):
		jump()
	velocity = speed * direction
	move_and_slide()
	
	
func gravity(delta: float) -> void:
	if self.is_on_floor():
		velocity.y = 0
	else:
		velocity.y += ProjectSettings.get_setting("physics/2d/default_gravity")
	move_and_slide()

func jump() -> void:
	velocity.y = -10000
	move_and_slide()
	

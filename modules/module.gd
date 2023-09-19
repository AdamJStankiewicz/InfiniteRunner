extends Node3D

@onready var level = $"../"
var speed = 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x -= speed * delta
	if position.x < -15:
		level.spawnModule(position.x+(level.amnt*level.offset))
		queue_free()

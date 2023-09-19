extends Node3D

@export var modules: Array[PackedScene] = []
var amnt = 30
var rng = RandomNumberGenerator.new()
var offset = 6

var initObs = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in amnt:
		spawnModule(n*offset)



func spawnModule(n):
	if initObs > 5:
		rng.randomize()
		var num = rng.randi_range(0,modules.size()-1)
		var instance = modules[num].instantiate()
		instance.position.x = n
		add_child(instance)
	else:
		var instance = modules[0].instantiate()
		instance.position.x = n
		add_child(instance)
		initObs += 1

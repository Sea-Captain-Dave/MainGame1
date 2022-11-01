extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func axeSlam():
	$KillZone.monitorable = true
	$KillZone.monitoring = true
	pass
	
func axeSlamoff():
	$KillZone.monitorable = false
	$KillZone.monitoring = false
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "You collected $"+str($"/root/MainHud".score)+" dollers\nAnd you only died "+str($"/root/MainHud".deaths)+" doing so."
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Label


var line = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("Next"):
		_on_Next_pressed()
	pass


func _on_Next_pressed():
	if line == 1:
		text = "I hate you"
	
	if line == 2:
		text = "Dag you realy lived up to your name\n this time, your fired"
		$Label.text = "Distant clown"
		$Person.visible = false
		
	if line == 3:
		get_tree().change_scene("res://cutScene/Bakery.tscn")
	line += 1
	
		
			
	pass # Replace with function body.

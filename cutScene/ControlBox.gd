extends Label


var line = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	_on_Next_pressed()
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("Next"):
		_on_Next_pressed()
	pass


func _on_Next_pressed():
	if line == 1:
		text = "A or D can be used to move\n The left analog stick also works"
	
	if line == 2:
		text = "Spacebar to jump \n S to decend with the jet pack\n on controller use A to jump \n and b to decend"

		
	if line == 3:
		text = "Q and E are used to zoom the camera\n Or L1/L2"
	if line == 4:
		text = "R can be used to toggel audio (x on controller)"		
	if line == 5:
		get_parent().queue_free()
	line += 1
		
			
	pass # Replace with function body.

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
		text = "Thats not good,\n better get to baking"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"
	if line == 2:
		text = "Dont wanna die"
	if line == 3:
		text = "3 weeks later"
		$Dag.visible = false
		$Label.text = " "
	if line == 4:
		get_tree().change_scene("res://cutScene/Bakery2.tscn")
	line += 1
	
		
			
	pass # Replace with function body.

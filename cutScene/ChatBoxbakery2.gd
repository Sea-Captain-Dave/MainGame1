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
		text = "what the???"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"
	if line == 2:
		text = "It was a grenade"
		$Person.visible = true
		$Dag.visible = false
		$Label.text = "Folivora,\n Local Nobility"	

	if line == 3:
		text = "Anyway these pies smell good,\n I'll be taking them."
	
	
	if line == 4:
		text = "No you wont, I cant make more\n the king will shoot me"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"

	if line == 5:
		text = "I dont care"
		$Person.visible = true
		$Dag.visible = false
		$Label.text = "Folivora,\n Local Nobility"
	if line == 6:
		text = "I have a knife"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"
	if line == 7:
		text = "I have grenades"
		$Person.visible = true
		$Dag.visible = false
		$Label.text = "Folivora,\n Local Nobility"
	if line == 8:
		text = "well thats not good"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"
	if line == 9:
		text = "HA, looks like you finally get what you deserve."
		$Person.visible = false
		$Dag.visible = false
		$cat.visible = true
		$Label.text = "Meowzers\n The ghost cat"
	if line == 10:
		text = "See ya would'ant wanna be ya!"
		$Person.visible = true
		$Dag.visible = false
		$cat.visible = false
		$Label.text = "Folivora,\n Local Nobility"
	if line == 11:
		text = "I'm gonna have to get those back"
		$Person.visible = false
		$Dag.visible = true
		$Label.text = "Dag,\n Dangerious"
	if line == 12:
		get_tree().change_scene("res://Node2D.tscn")
	line += 1
	

			
	pass # Replace with function body.

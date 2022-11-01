extends Label


var line = 1
var mincePie
var steakPie
var butterPie 
var state = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	mincePie = true
	butterPie = $"/root/MainHud".oilPie
	steakPie = $"/root/MainHud".steakPie
	
	if mincePie == true && butterPie == true && steakPie == true:
		text = "Folivora, nothing? realy \n hope you like bullets \n Bet the guy with a warm potato is relived"
		state = 1
		pass
	if mincePie == true && butterPie == false && steakPie == true:
		text = "Folivora, this pie smells like oil.\n Somehow less apatising than the warm potato"
		state = 2
		pass
	if mincePie == false or steakPie == false:
		text = "Folivora, this pie is great youve outdone yourself"
		state = 5
		if butterPie == false:
			text += "\nNot so much the oily one"
			state = 6
		pass
	
		
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("Next"):
		_on_Next_pressed()
	pass
"Dag,\n Dangerious"
"Jeff\n The King"

func _on_Next_pressed():
	if line == 1:
		if state == 1 || state == 2:
			$Label.text = "Folivora,\n Local Nobility"
			$Person.visible = false
			$Folivora.visible = true
			text = "crying"
		else:
			line = 2
			
	if line == 2:
		$Label.text = "Jeff\n The King"
		$Person.visible = true
		$Folivora.visible = false

		if state == 1:
			text = "These pies are great youve outdone yourself,\n whoever you are.\nNot so much the oily one"
		if state == 2:
			text = "These pies are great youve outdone yourself,\n whoever you are."
		if state == 5:
			text = "This pie is great youve outdone yourself,\n whoever you are."
		if state == 6:
			text = "This pie is great youve outdone yourself,\n whoever you are.\nNot so much the oily one"
		
	if line == 3:
		$Dag.visible = true
		$Person.visible = false
		$Label.text = "Dag,\n Dangerious Dag"
		text = "I'm just glad you enjoyed it"			
	if line == 4:
		$Dag.visible = false
		$Person.visible = true
		$Label.text = "Jeff\n The King"
		text = "Time to anounce the Loser"
	if line == 5:
		if state == 1 or state == 2:
			text = "Its Folivora,\n never shot nobility in one of these befor"
		else:
			text = "Its potato guy he looses, big surprise"

	if line == 6:
		text = "And now for the main event.\nThe winner of todays compition"
	if line == 7:
		text = "It's MEEEEEEEEE!"
	if line == 8:
		get_tree().change_scene("res://cutScene/Game over.tscn")
	line += 1
	
		
			
	pass # Replace with function body.

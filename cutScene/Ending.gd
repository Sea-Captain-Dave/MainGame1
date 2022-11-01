extends Node2D

var line = 1
var mincePie = true
var steakPie = false
var butterPie = false

func _ready():

	butterPie = $"/root/MainHud".oilPie
	steakPie = $"/root/MainHud".mincePie
	$"/root/MainHud".hideStuff()
	$"/root/MainHud".hidePies()
	if steakPie == true:
		$DagPieMince.visible = true
	else:
		$PieMince.visible = true
	if mincePie == true:
		$dagPieSteak.visible = true
	else:
		$PieSteak.visible = true
	if butterPie == true:
		$dagPieButter.visible = true
	else:
		$PieButter.visible = true
	pass 
	

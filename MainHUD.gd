extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var score = 0 setget set_score
onready var deaths = 0 setget set_deaths
var oilPie = false
#var pie = false
var mincePie = false
var steakPie = false
# Called when the node enters the scene tree for the first time.
func _ready():

	$HUD/ButterPie.playing = true
	pass # Replace with function body.
func hideStuff():
	$HUD/Score.visible = false
	$HUD/Deaths.visible = false
	pass
func showtuff():
	$HUD/Score.visible = true
	$HUD/Deaths.visible = true
	pass
func hidePies():
	$HUD/ButterPie.visible = false
	$HUD/MincePie.visible = false
	$HUD/SteakPie.visible = false
	pass
	
	
func set_score(value):
	score = value
	$HUD/Score.set_text("Money: $"+str(score))
	pass
	
	
func set_deaths(value):
	deaths = value
	$HUD/Deaths.set_text("Gamer score: "+str(deaths))
	
	pass

func addButterPie():
	$HUD/ButterPie.visible = true
	oilPie = true

	pass
func addMincePie():
	$HUD/MincePie.visible = true
	
	mincePie = true
	pass
func addSteakPie():

	$HUD/SteakPie.visible = true
	
	steakPie = true
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

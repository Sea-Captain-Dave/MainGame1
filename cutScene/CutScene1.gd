extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root/MainHud".hideStuff()
	OS.set_window_position(OS.get_screen_size()*0.5 - OS.get_window_size()*0.5)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Label_gui_input(event):
	#if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_RIGHT:
	$Sprite.visible = false
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_RIGHT:
		$Sprite.visible = false
	pass # Replace with function body.


func _on_TouchScreenButton_pressed():
	$Sprite.visible = false
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://cutScene/CutScene2.tscn")
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()
	pass # Replace with function body.

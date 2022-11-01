extends KinematicBody2D



const UP = Vector2(0, -1)
const SPEED = 450
var GRAVITY = 40
var JUMP_HEIGHT = -1280
var motion = Vector2()# moving in 2d space
var chck_point = Vector2()
var fallspeed = 0
var boostMax = -3000
var jetBoots = true
var jetBootsUp = true
var jetBootsDown = true
var packThrust = 0
var cycled = 100
#var fuelLeft = 1500
#var totFuel = 1501
#var fuelEffitancy = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	chck_point.x = 0
	chck_point.y = 0

	pass # Replace with function body.


func _physics_process(delta):
	motion.y += GRAVITY
	fallspeed += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		$Texture.flip_h = false #flip sprite to face direction
		motion.x = SPEED
		$Texture.play("Run")
	elif Input.is_action_pressed("ui_left"):
		$Texture.flip_h = true #flip sprite to face direction
		motion.x = -SPEED
	
		$Texture.play("Run")
	else:
		motion.x = 0
		$Texture.play("Idle")
	
	if is_on_floor():
		fallspeed = 0

		cycled = 50
		if Input.is_action_pressed("ui_up"):
			motion.y += JUMP_HEIGHT
			fallspeed = motion.y
			
			#$Jump.playing = true
			
	else :
		#if cycled == 0:
		if jetBoots:
			if Input.is_action_pressed("ui_up") && jetBootsUp:
				motion.y += packThrust
				fallspeed += packThrust
					#jetBootsUp = false
				#else:
			if Input.is_action_pressed("ui_down"):# && jetBootsDown:
				motion.y += -1*packThrust
				fallspeed += -1*packThrust
				#	motion.y += JUMP_HEIGHT*-1
				#	fallspeed += JUMP_HEIGHT*-1
				#	jetBootsDown = false
		else :
			cycled += -1
		if motion.y < 0:
			$Texture.play("Jump")
		else:
			$Texture.play("Fall")
	# use move_and_slide to create movement on screen

	motion = move_and_slide(motion, UP)
	
	if Input.is_action_pressed("ui_zoom_in"):
		if $Camera2D.zoom.x <= 5:
			$Camera2D.zoom.x +=0.1
			$Camera2D.zoom.y +=0.1
	if Input.is_action_pressed("ui_zoom_out"):
		if $Camera2D.zoom.x >= 1:
			$Camera2D.zoom.x -=0.1
			$Camera2D.zoom.y -=0.1
	pass



func _on_Area2D_body_entered(body):

	pass # Replace with function body.
	


func _on_Area2D_area_entered(body):
	
	if body.name == "BoostZone":
		#if motion.y > -100:
		#	motion.y = motion.y*-1
		#3	motion.y += -300
		#	cycled = 50
		var vel = fallspeed
		if vel > 0:

			vel = vel*(-1)
			vel += -350
			if vel < boostMax:
				vel = boostMax
		fallspeed = vel
		motion.y = vel
		#$Bounce.playing = true
		

	else:if body.name =="Checkpoint" :
			chck_point.x = position.x
			chck_point.y = position.y
	else:if body.name == "JetPackPickup":
			packThrust = -30

	else:
		position.x = chck_point.x
		position.y = chck_point.y
		motion.x = 0
		motion.y = 0
		get_node("/root/MainHud").deaths += 1
		

	pass # Replace with function body.
func _setCameraActive():
	$Camera2D.current = true
	pass
	
func _on_BoostBoster_body_entered(body):
	boostMax = -3000
	
	pass # Replace with function body.


func _on_JetPackPickup_body_entered(body):
	#if body.name == "Player":
		
		
	pass # Replace with function body.

extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attacking = 0
var wateTime = Timer.new()
var wateTime2 = Timer.new()
var wateTime3 = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_child(wateTime)
	self.add_child(wateTime2)
	self.add_child(wateTime3)
	#wateTime.set_one_shot(true)
	#wateTime.set_wait_time(0.4)
	#wateTime2.set_one_shot(true)
	#wateTime2.set_wait_time(0.6)
	
	#wateTime3.set_one_shot(true)
	#wateTime3.set_wait_time(0.2)
	
	$KnightTexture.playing = false
	#$AnimatedSprite/SwingZone.monitorable = false
	#$AnimatedSprite/SwingZone.monitoring = false
	#$AnimatedSprite/KillZone.monitoring = false
	#$AnimatedSprite/KillZone.monitorable = false
	#$AnimatedSprite.visible = false
	
	while true:
			wateTime.set_wait_time(1)
			wateTime.set_one_shot(true)
			wateTime.start()
			yield(wateTime, "timeout")
			$KnightTexture.frame = 0
			attacking = attacking - 1
			if attacking > 0:		
				#$KnightTexture.visible = true
				$KnightTexture.playing = true
				wateTime.set_wait_time(0.4)
				wateTime.set_one_shot(true)

				wateTime.start()
				yield(wateTime, "timeout")
				$KnightTexture/SwingZone.monitorable = true
				$KnightTexture/SwingZone.monitoring = true
				$KnightTexture.frame = 4
				
				wateTime2.set_wait_time(0.6)
				wateTime2.set_one_shot(true)

				wateTime2.start()
				yield(wateTime2, "timeout")
				$KnightTexture/SwingZone.monitorable = false
				$KnightTexture/SwingZone.monitoring = false

				$KnightTexture.axeSlam()
				#$AnimatedSprite.frame = 10

				wateTime3.set_wait_time(0.2)
				wateTime3.set_one_shot(true)

				wateTime3.start()
				yield(wateTime3, "timeout")
				

				$KnightTexture.playing = false
				$KnightTexture.frame = 0
				$KnightTexture.axeSlamoff()
				wateTime.set_wait_time(1)
				wateTime.set_one_shot(true)
				wateTime.start()
				yield(wateTime, "timeout")
			
				

				
	pass # Replace with function body.



func _on_rightScan_body_entered(body):
	if body.name == "Player":
		$KnightTexture.flip_h = false
		attacking = 3
	pass # Replace with function body.


func _on_leftScan_body_entered(body):
	if body.name == "Player":
		$KnightTexture.flip_h = true
		attacking = 3
	pass # Replace with function body.


func _on_rightScan_body_exited(body):
	#attacking = false
	pass # Replace with function body.


func _on_leftScan_body_exited(body):
	#attacking = false
	pass # Replace with function body.

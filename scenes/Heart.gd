extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	randomize()
	
	#Color the sprite
	$Sprite.modulate = Color(randf(), randf(), randf())
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#A function to cook the meat
#Changes the color of the meat a random yellow or brown (gold?)
func cook_golden():

	var cook_color #The color of the transparent mask that's overlayed on meat

	if randi()%2 == 0:
		cook_color = MedAlgo.generate_brown()
	else:
		#cook_color = MedAlgo.generate_gold()
		cook_color = MedAlgo.generate_brown()
	
	$Sprite2.modulate = cook_color #make the color
	$Sprite2.visible = true #and turn on
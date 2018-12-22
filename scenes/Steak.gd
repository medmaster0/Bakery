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

#A function to cook the steak
#Changes the color of the steak a random yellow or brown (gold?)
func cook_golden():
	#DOESNT WORK YET RANDOM COLOR RIGHT NOW!!!
	#$Sprite2.modulate = Color(randf(), randf(), randf())
	if randi()%2 == 0:
		$Sprite2.modulate = MedAlgo.generate_brown()
	else:
		$Sprite2.modulate = MedAlgo.generate_gold()
		#$Sprite2.modulate = MedAlgo.generate_brown()
	
	$Sprite3.modulate = $Sprite2.modulate #make same as fat color
	$Sprite3.visible = true #and turn on
	

#A function to cook the steak
#Changes the color of the steak a random color...
#Doesnt actualy look good... hopefully use golden instead!!!!!!
#BAD BAD BAD
func cook_random():
	$Sprite2.modulate = Color(randf(), randf(), randf())
	
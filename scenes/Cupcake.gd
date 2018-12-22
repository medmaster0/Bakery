extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	randomize()
	
	#Color the sprites...
	$Sprite.modulate = Color(randf(), randf(), randf())
	$Sprite2.modulate = Color(randf(), randf(), randf())
	$Sprite3.modulate = Color(randf(), randf(), randf())
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#Set the frosting color
func setFrostingColor(color):
	$Sprite.modulate = color
	
#Set the cherry color
func setCherryColor(color):
	$Topping.get_child(0).modulate = color
	
#Set the wrapping colors
func setWrappingColors(color1, color2):
	$Sprite2.modulate = color1
	$Sprite3.modulate = color2
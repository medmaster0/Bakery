extends Node

export (PackedScene) var Cupcake
export (PackedScene) var Heart
export (PackedScene) var Steak

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var map_cupcakes = [] #list of all the cupcakes on the map
var frosting_colors = [] #list of the different types of frosting
var cherry_colors = [] #list of the different cherry toppings


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	randomize()
	
	for i in range(3):
		#Choose some random colors
		frosting_colors.append( Color(randf(), randf(), randf()) )
		cherry_colors.append( Color(randf(), randf(), randf()) )		
		
		var wrapping_color1 = Color(randf(), randf(), randf())
		var wrapping_color2 = Color(randf(), randf(), randf())
		
		#For this type, create a row of cupcakes
		for j in range(20):
			var temp_cupcake = Cupcake.instance()
			temp_cupcake.position = $TileMap.map_to_world( Vector2(5+2*j, 1+3*i) )
			add_child(temp_cupcake)
			map_cupcakes.append(temp_cupcake)
			
			#Set the proper colors
			temp_cupcake.setFrostingColor(frosting_colors[i])
			temp_cupcake.setCherryColor(cherry_colors[i])
			temp_cupcake.setWrappingColors(wrapping_color1, wrapping_color2)
	
	#Make some MEAT
	for i in range(20):
		
		var meat_color = Color(randf(), randf(), randf())
		
		#Hearts
		var temp_heart = Heart.instance()
		temp_heart.position = $TileMap.map_to_world( Vector2(5+2*i, 22) )
		add_child(temp_heart)
		temp_heart.get_child(0).modulate = meat_color
		
		#Steak
		var temp_steak = Steak.instance()
		temp_steak.position = $TileMap.map_to_world( Vector2(5+2*i, 24) )
		add_child(temp_steak)
		temp_steak.get_child(0).modulate = meat_color
		
		#Cooked Steak - DOESNT ACTUALLY LOOK GOOD
		var temp_cooked_steak = Steak.instance()
		temp_cooked_steak.position = $TileMap.map_to_world( Vector2(5+2*i, 26) )
		add_child(temp_cooked_steak)
		temp_cooked_steak.get_child(0).modulate = meat_color
		temp_cooked_steak.modulate = meat_color
		#temp_steak.modulate = meat_color #meat takes on a random color modulation when cooked!!
		#BAD IDEA>>> BUT!!!!
		#GOLDEN YELLOW FAT COLORING LOOKS AWESOME!!
		
		#Another version of cooked steak - random doesn't look good
		var temp_random_cooked_steak = Steak.instance()
		temp_random_cooked_steak.position = $TileMap.map_to_world( Vector2(5+2*i, 28) )
		add_child(temp_random_cooked_steak)
		temp_random_cooked_steak.get_child(0).modulate = meat_color
		temp_random_cooked_steak.cook_random()
		#Looks too otherworldly.....
		
		#Cooked steak - Golden Brown
		var temp_golden_cooked_steak = Steak.instance()
		temp_golden_cooked_steak.position = $TileMap.map_to_world( Vector2(5+2*i, 30) )
		add_child(temp_golden_cooked_steak)
		temp_golden_cooked_steak.get_child(0).modulate = meat_color
		temp_golden_cooked_steak.cook_golden()
	
#	#Make a bunch of cupcakes, cupcake
#	for i in range(20):
#		var temp_cupcake = Cupcake.instance()
#		temp_cupcake.position = $TileMap.map_to_world( Vector2(5+i,5) )
#		add_child(temp_cupcake)
#		map_cupcakes.append(temp_cupcake)
	
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

extends CharacterBody2D

var speed = 300
var rocket_scene = preload("res://scenes/rocket.tscn")
@onready var rocket_container = get_node("RocketContainer") #to have rockets independent on player
signal took_damage 
@onready var rocket_shot_sound = $RocketShot
  
func _physics_process(delta):
	#to stops ship if no key pressed
	velocity = Vector2(0,0) 
	
	#Input key actions
	if Input.is_action_pressed("move_down"):
		velocity.y = speed
	if Input.is_action_pressed("move_up"):
		velocity.y = -speed
	if Input.is_action_pressed("move_left"):
		velocity.x = -speed
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	move_and_slide()
	
	
	#to keep ship inside visible game area
	var screen_size = get_viewport_rect().size 
	global_position = global_position.clamp(Vector2(0,0), screen_size)

func _process(delta):
	#shooting the rockets
	if Input.is_action_just_pressed("shoot"):
		shoot()
		
func shoot():
	var rocket_instance = rocket_scene.instantiate()
	rocket_container.add_child(rocket_instance)
	rocket_shot_sound.play()
	rocket_instance.global_position = global_position
	rocket_instance.global_position.x += 50

func take_damage():
	emit_signal("took_damage")
	#print("Player took damage..")
	
func die():
	queue_free()

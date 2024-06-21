extends Node2D

var lives = 3
var score = 0
var time = 120

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var ui = $UI

@onready var enemy_hit_sound = $EnemyHitSound
@onready var player_take_damage = $PlayerTakeDamage

var game_over_scree = preload("res://scenes/game_over_screen.tscn")

func _ready():
	hud.set_score_label(score)
	hud.set_lives_left(lives)
	hud.set_time_label(time)

func _on_death_zone_area_entered(area):
	area.queue_free()


func _on_player_took_damage():
	lives -= 1
	hud.set_lives_left(lives)
	player_take_damage.play()
	if (lives == 0):
		game_over()
	

func _on_enemy_spawner_enemy_spawned(enemy_instance):
	enemy_instance.connect("died", _on_enemy_died) #connect signal from enemy instance which is created after game starts
	add_child(enemy_instance)

func _on_enemy_died():
	enemy_hit_sound.play()
	score += 100
	hud.set_score_label(score)
	print("Score: " + str(score))


func _on_time_keeper_timeout():
	time -= 1
	hud.set_time_label(time)
	if (time == 0):
		game_over()

func game_over():
	print("Game over!")
	player.die()
	
	await get_tree().create_timer(1.5).timeout #timeout to GOS to show
	
	var gos = game_over_scree.instantiate()
	gos.set_score(score)
	ui.add_child(gos)

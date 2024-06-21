extends Node2D

signal enemy_spawned(enemy_instance)

var enemy_scene = preload("res://scenes/enemy.tscn")

@onready var spawn_positions = $SpawnPositions

func _on_timer_timeout():
	spawn_enemy()

func spawn_enemy():
	var spawn_positions_arrray = spawn_positions.get_children()
	var random_spawn_positions_arrray = spawn_positions_arrray.pick_random()
	
	var enemy_instance = enemy_scene.instantiate()
	enemy_instance.global_position = random_spawn_positions_arrray.global_position
	emit_signal("enemy_spawned", enemy_instance)
	#add_child(enemy_instance)

extends Control

@onready var score = $Score
@onready var lives_left = $Lives;
@onready var time = $Time

func set_score_label(new_score):
	score.text = "SCORE: " + str(new_score)

func set_lives_left(new_value):
	lives_left.text = "X " + str(new_value)

func set_time_label(new_time):
	time.text = "TIME: " + str(new_time)

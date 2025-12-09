extends Control

@onready var health_label = $MarginContainer/HBoxContainer/HealthLabel
@onready var score_label = $MarginContainer/HBoxContainer/ScoreLabel
@onready var time_label = $MarginContainer/HBoxContainer/TimeLabel

func update_health(value):
	health_label.text = "Vida: " + str(value)

func update_score(value):
	score_label.text = "Pontos: " + str(value)

func update_time(value):
	time_label.text = "Tempo: " + str(value)

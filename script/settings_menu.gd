extends Control

@onready var volume_slider = $PanelContainer/VBoxContainer/VolumeSlider
@onready var fullscreen_check = $PanelContainer/VBoxContainer/FullscreenCheck
@onready var back_button = $PanelContainer/VBoxContainer/HBoxContainer/BackButton

func _ready():
	back_button.pressed.connect(_on_back_pressed)
	volume_slider.value_changed.connect(_on_volume_changed)
	fullscreen_check.toggled.connect(_on_fullscreen_toggled)

func _on_back_pressed():
	queue_free()

func _on_volume_changed(value):
	print("Volume: ", value)

func _on_fullscreen_toggled(pressed):
	print("Tela cheia: ", pressed)

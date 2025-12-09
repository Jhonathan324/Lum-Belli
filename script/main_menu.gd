extends Control

func _ready():
	print("Menu principal carregado!")

func _on_start_button_pressed():
	var level_scene = load("res://scenes/levels/Level1_3D.tscn")
	get_tree().change_scene_to_packed(level_scene)

func _on_settings_button_pressed():
	var settings_scene = load("res://scenes/SettingsMenu.tscn")
	var settings_instance = settings_scene.instantiate()
	add_child(settings_instance)

func _on_credits_button_pressed():
	print("Mostrar créditos")

func _on_quit_button_pressed():
	get_tree().quit()

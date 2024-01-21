extends Control

@onready var buttons_v_box = %ButtonsVBox


func _ready():
	focus_button()


func _on_start_game_botton_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_exit_button_pressed():
	get_tree().quit()


func _on_visibility_changed():
	focus_button()

func focus_button():
	if buttons_v_box:  # is there a reference to the buttons_v_box?
		var button: Button = buttons_v_box.get_child(0)  # get first element
		if button is Button:
			button.grab_focus()
			

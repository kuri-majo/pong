extends Control

@onready var vbox = %QuitPauseButtonVBox

func _ready():
	show()
	if vbox:  # is there a reference to the vbox?
		var button: Button = vbox.get_child(1)  # get first element
		if button is Button:
			button.grab_focus()


func _on_quit_pause_button_pressed():
	hide()
	get_tree().paused = false

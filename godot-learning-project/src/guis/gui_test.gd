extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Globals.game_controller.change_world2d_scene('res://src/levels/sandbox_2.tscn')
	Globals.game_controller.change_gui_scene("res://src/guis/gui_test2.tscn")

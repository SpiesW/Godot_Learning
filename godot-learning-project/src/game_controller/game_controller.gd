class_name GameController
extends Node

@export var gui: Node2D
@export var world2D: Control

var current_gui = null
var current_world_2d = null

func _ready():
	Globals.game_controller = self
	change_world2d_scene('res://src/levels/sandbox.tscn')
	change_gui_scene('res://src/guis/gui_test.tscn')
	

func change_world2d_scene(new_file: String):
	if current_world_2d != null:
		current_world_2d.queue_free()
	var new_scene = load(new_file).instantiate()
	world2D.add_child(new_scene)
	current_world_2d = new_scene
	
func change_gui_scene(new_file: String):
	if current_gui != null:
		current_gui.queue_free()
	var new_scene = load(new_file).instantiate()
	gui.add_child(new_scene)
	current_gui = new_scene

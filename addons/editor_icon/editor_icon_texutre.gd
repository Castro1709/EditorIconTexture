@tool
extends EditorPlugin

class_name EditorIconsPlugin

const class_script = preload("res://addons/editor_icon/editor_icon.gd")
func _enter_tree() -> void:
	add_custom_type("EditorIconTexture","TextureRect",class_script,get_Godot_icon("StatusSuccess"))

func get_Godot_icon(icon:String) -> Texture:
	return get_editor_interface().get_base_control().get_theme_icon(icon,"EditorIcons")


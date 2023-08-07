@tool
extends TextureRect
##used to display the built-in Godot icons from it's editor by editing  [member icon_name]
class_name EditorIcon

var _plugin_instance := EditorIconsPlugin.new()
##Set this to the name of the icon of the editor, see the plugin called "Editor icon previewer"
## for the full list or the Godot github repository
@export
var icon_name : String = "" :
	get:
		return icon_name
	set(v):
		icon_name = v
		_name_updated()

func _name_updated() -> void:
	if _plugin_instance == null:
		return
	if icon_name=="":
		texture = null
	texture = _plugin_instance.get_Godot_icon(icon_name)

func _ready() -> void:
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED

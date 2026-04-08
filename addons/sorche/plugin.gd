@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_autoload_singleton("SorcheCore", "res://addons/sorche/SorcheCore.gd")
	add_autoload_singleton("SorcheRender", "res://addons/sorche/SorcheRender.gd")
	print("[Sorche Engine] Autoloads registered successfully!")

func _exit_tree() -> void:
	remove_autoload_singleton("SorcheCore")
	remove_autoload_singleton("SorcheRender")
	print("[Sorche Engine] Autoloads removed")
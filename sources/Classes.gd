extends Node



class Graphics:
	const StarryBackground : PackedScene = preload("res://sources/graphics/StarryBackground.tscn")

class Interfaces:
	const StartMenu : Script = preload("res://sources/interfaces/StartMenu.gd")
	const GameSelecting : Script = preload("res://sources/interfaces/GameSelecting.gd")

class Logics:
	const Settings : Script = preload("res://sources/logics/Settings.gd")

class Modifications:
	const Modification : Script = preload("res://sources/modifications/Modification.gd")
	const Weapon : Script = preload("res://sources/modifications/Weapon.gd")

class Plugins:
	const Plugin : Script = preload("res://sources/plugins/Plugin.gd")

class Utilities:
	const Logger : Script = preload("res://sources/utilities/Logger.gd")



var graphics : Graphics = Graphics.new()
var interfaces : Interfaces = Interfaces.new()
var logics : Logics = Logics.new()
var modifications : Modifications = Modifications.new()
var plugins : Plugins = Plugins.new()
var utilities : Utilities = Utilities.new()

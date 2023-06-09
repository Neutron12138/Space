extends Node

class Graphics:
	const StarryBackground : PackedScene = preload("res://sources/graphics/StarryBackground.tscn")

class Logic:
	const Settings : Script = preload("res://sources/logic/Settings.gd")

class Modification:
	const Weapon : Script = preload("res://sources/modification/Weapon.gd")

class Plugin:
	pass

class Utilities:
	const Logger : Script = preload("res://sources/utilities/Logger.gd")

var graphics : Graphics = Graphics.new()
var logic : Logic = Logic.new()
var modification : Modification = Modification.new()
var plugin : Plugin = Plugin.new()
var utilities : Utilities = Utilities.new()

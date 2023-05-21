class_name Mod_Modification
extends Node

const MOD_AUTHOR : String = "author"
const MOD_VERSION : String = "version"
const MOD_DATA : String = "data"

const MODDATA_NAME : String = "name"
const MODDATA_PRICE : String = "price"
const MODDATA_ARMOR : String = "armor"
const MODDATA_ATTACK : String = "attack"
const MODDATA_WEAPON : String = "weapon"
const MODDATA_STORY : String = "story"
const MODDATA_SHIP : String = "ship"
const MODDATA_TYPE : String = "type"

@export var mod_author : String = ""
@export var mod_version : String = ""
@export var mod_data : Dictionary = {}

func as_dictionary() -> Dictionary:
	return {
		MOD_AUTHOR : mod_author,
		MOD_VERSION : mod_version,
		MOD_DATA : mod_data,
	}
	
func load_from_dictionary(dict : Dictionary) -> void:
	pass

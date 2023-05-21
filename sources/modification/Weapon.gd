class_name Mod_Weapon
extends Mod_Modification

@export var weapon_name : String = ""
@export var weapon_price : int = 0
@export var weapon_armor : int = 0
@export var weapon_attack : int = 0

func as_dictionary() -> Dictionary:
	return {
		MODDATA_NAME : weapon_name,
		MODDATA_PRICE : weapon_price,
		MODDATA_ARMOR : weapon_armor,
		MODDATA_ATTACK : weapon_attack,
	}
	
func load_from_dictionary(dict : Dictionary) -> void:
	if MODDATA_NAME in dict:
		weapon_name = str(dict[MODDATA_NAME])
		
	if MODDATA_PRICE in dict:
		weapon_price = int(dict[MODDATA_PRICE])
	
	if MODDATA_ARMOR in dict:
		weapon_armor = int(dict[MODDATA_ARMOR])
	
	if MODDATA_ATTACK in dict:
		weapon_attack = int(dict[MODDATA_ATTACK])

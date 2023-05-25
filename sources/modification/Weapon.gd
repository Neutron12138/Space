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
	for key in dict:
		var value = dict[key]
		if value == null:
			continue
		else:
			match key:
				MODDATA_NAME:
					weapon_name = str(value)
				MODDATA_PRICE:
					if typeof(value) == TYPE_INT:
						weapon_price = int(value)
					else:
						Global.report_error(
							Utils_ErrorInfo.make(
								"Type error parsing \"\", integer required",
								[]
							)
						)

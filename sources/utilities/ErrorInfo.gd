class_name Utils_ErrorInfo
extends Node

const TEXT_LABEL : String = "label"
const TEXT_ACTION : String = "action"
const DEFAULT_BUTTONS : Array = [
	{
		TEXT_LABEL : "TEXT_ERROR_OK",
		TEXT_ACTION : null,
	},
	{
		TEXT_LABEL : "TEXT_ERROR_EXIT",
		TEXT_ACTION : null,
	},
]

@export var text : String
@export var buttons : Array = [
	{
		TEXT_LABEL : "TEXT_ERROR_OK",
		TEXT_ACTION : func(): pass,
	},
	{
		TEXT_LABEL : "TEXT_ERROR_EXIT",
		TEXT_ACTION : func(): pass,
	},
]

static func make(text : String,buttons : Array) -> Utils_ErrorInfo:
	var result = Utils_ErrorInfo.new()
	result.text = text
	result.buttons = buttons
	return result

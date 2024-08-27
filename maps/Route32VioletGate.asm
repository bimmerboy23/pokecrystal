	object_const_def
	const ROUTE32VIOLETGATE_OFFICER
	const ROUTE32VIOLETGATE_GRAMPS

Route32VioletGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route32VioletGateOfficerScript:
	jumptextfaceplayer Route32VioletGateOfficerText

Route32VioletGateGrampsScript:
	jumptextfaceplayer Route32VioletGateGrampsText

Route32VioletGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route32VioletGateGrampsText:
	text "Did you see that"
	line "strange tree in"
	cont "the road?"

	para "That may explain"
	line "why fewer people"

	para "are visiting the"
	line "RUINS OF ALPH."
	done

Route32VioletGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, VIOLET_CITY, 10
	warp_event  5,  0, VIOLET_CITY, 11
	warp_event  4,  7, ROUTE_32, 5
	warp_event  5,  7, ROUTE_32, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32VioletGateOfficerScript, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route32VioletGateGrampsScript, -1

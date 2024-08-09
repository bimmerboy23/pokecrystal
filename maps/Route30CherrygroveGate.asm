	object_const_def
	const ROUTE30CHERRYGROVEGATE_OFFICER
	const ROUTE30CHERRYGROVEGATE_GRAMPS

Route30CherrygroveGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route30CherrygroveGateOfficerScript:
	jumptextfaceplayer Route30CherrygroveGateOfficerText

Route30CherrygroveGateGrampsScript:
	jumptextfaceplayer Route30CherrygroveGateGrampsText

Route30CherrygroveGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route30CherrygroveGateGrampsText:
	text "Did you see that"
	line "strange tree in"
	cont "the road?"

	para "That may explain"
	line "why fewer people"

	para "are visiting the"
	line "RUINS OF ALPH."
	done

Route30CherrygroveGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_30, 3
	warp_event  5,  0, ROUTE_30, 4
	warp_event  4,  7, CHERRYGROVE_CITY, 6
	warp_event  5,  7, CHERRYGROVE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route30CherrygroveGateOfficerScript, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route30CherrygroveGateGrampsScript, -1

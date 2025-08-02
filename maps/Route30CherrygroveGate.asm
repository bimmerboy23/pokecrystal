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
	text "Make sure to look"
	line "both ways when"
	cont "crossing the"
	cont "tracks!"
	done

Route30CherrygroveGateGrampsText:
	text "The new train"
	line "can be really"
	cont "loud."

	para "My granddaughter"
	line "likes it because"

	para "now she can visit"
	line "her boyfriend, who"
	cont "lives in Saffron."
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

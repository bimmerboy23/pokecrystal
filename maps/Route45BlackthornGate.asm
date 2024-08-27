	object_const_def
	const ROUTE45BLACKTHORNGATE_OFFICER
	const ROUTE45BLACKTHORNGATE_GRAMPS

Route45BlackthornGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route45BlackthornGateOfficerScript:
	jumptextfaceplayer Route45BlackthornGateOfficerText

Route45BlackthornGateGrampsScript:
	jumptextfaceplayer Route45BlackthornGateGrampsText

Route45BlackthornGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route45BlackthornGateGrampsText:
	text "Did you see that"
	line "strange tree in"
	cont "the road?"

	para "That may explain"
	line "why fewer people"

	para "are visiting the"
	line "RUINS OF ALPH."
	done

Route45BlackthornGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, BLACKTHORN_CITY, 9
	warp_event  5,  0, BLACKTHORN_CITY, 10
	warp_event  4,  7, ROUTE_45, 2
	warp_event  5,  7, ROUTE_45, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route45BlackthornGateOfficerScript, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route45BlackthornGateGrampsScript, -1

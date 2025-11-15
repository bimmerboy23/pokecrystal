	object_const_def
	const ROUTE32VIOLETGATE_OFFICER

Route32VioletGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route32VioletGateOfficerScript:
	jumptextfaceplayer Route32VioletGateOfficerText

Route32VioletGateOfficerText:
	text "Falkner is a"
	line "great trainer!"
	cont "Just like his"
	cont "father was!"
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
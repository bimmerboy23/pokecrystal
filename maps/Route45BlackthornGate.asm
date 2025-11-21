	object_const_def
	const ROUTE45BLACKTHORNGATE_OFFICER


Route45BlackthornGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route45BlackthornGateOfficerScript:
	jumptextfaceplayer Route45BlackthornGateOfficerText

Route45BlackthornGateOfficerText:
	text "This route has seen"
	line "some constuction"
	cont "recently with"
	cont "the new train."
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

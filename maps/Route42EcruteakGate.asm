	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER
	const ROUTE42ECRUTEAKGATE_COOLTRAINER_F

Route42EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGateCooltrainerFScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM09_AERIAL_ACE
	iftrue .GotAerialAce
	writetext Route42EcruteakGateCooltrainerFText
	promptbutton
	verbosegiveitem TM_AERIAL_ACE
	iffalse .NoRoom
	setevent EVENT_GOT_TM09_AERIAL_ACE
.GotAerialAce:
	writetext Route42EcruteakGateCooltrainerFText_GotAerialAce
	waitbutton
.NoRoom:
	closetext
	end

Route42EcruteakGateCooltrainerFTextText:
	text "Hey, are you a"
	line "new trainer?"

	para "I have a new move"
	line "that could help"

	para "you on your journey!"
	line "Here take this."
	done

Route42EcruteakGateCooltrainerFText_GotAerialAce
	text "It's AERIAL ACE."

	para "It's a new flying"
	line "move."

	para "It's a speedy"
	line "unavoidable attack."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
	object_event  1,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateCooltrainerFScript, -1

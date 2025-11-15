	object_const_def
	const ROUTE32VIOLETGATE_OFFICER
	const ROUTE32VIOLETGATE_ELMS_AIDE

Route32VioletGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route32VioletGateOfficerScript:
	jumptextfaceplayer Route32VioletGateOfficerText

Route32VioletGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route32VioletGateAideDexCheckScript:
	faceplayer
	opentext
	checkevent EVENT_ROUTE_32_VIOLET_GATE_AIDE
	iftrue .AlreadyGotItem
	readvar VAR_DEXCAUGHT
	ifgreater 20, .Aide20Caught
	writetext AideTextFailure
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext AideGotText
	waitbutton
	closetext
	end

.Aide20Caught
	writetext AideTextSuccess
	giveitem EXP.SHARE
	iffalse .NoRoom
	setevent EVENT_ROUTE_32_VIOLET_GATE_AIDE
	waitbutton
	closetext
	end

.NoRoom:
	writetext AideNoRoom
	waitbutton
	closetext
	end

.Aide20Caught
	writetext AideTextSuccess
	giveitem EXP.SHARE
	closetext
	end

AideTextFailure:
	text "Hmm… You don't have"
	line "enough #MON."

	para "No GIFT for you."
	done

AideTextSuccess:
	text "Oh! You do have"
	line "enough #MON."

	para "Here's EXP.SHARE!"
	done

AideNoRoom:
	text "Your PACK is full"
	line "it looks like."
	done

AideGotText:
	text "I will head back"
	line "to the lab soon."

	para "Good luck on your"
	line "journey"
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
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route32VioletGateAideDexCheckScript, EVENT_ROUTE_32_VIOLET_GATE_AIDE
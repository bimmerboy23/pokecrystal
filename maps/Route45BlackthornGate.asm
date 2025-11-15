	object_const_def
	const ROUTE45BLACKTHORNGATE_OFFICER
	const ROUTE45BLACKTHORNGATE_ELMS_AIDE

Route45BlackthornGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route45BlackthornGateOfficerScript:
	jumptextfaceplayer Route45BlackthornGateOfficerText

Route45BlackthornGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route45BlackthornGateAideDexCheckScript:
	faceplayer
	opentext
	checkevent EVENT_ROUTE_45_BLACKTHORN_AIDE
	iftrue .AlreadyGotItem45
	readvar VAR_DEXCAUGHT
	ifgreater 60, .Aide60Caught45
	writetext AideTextFailure45
	waitbutton
	closetext
	end

.AlreadyGotItem45:
	writetext AideGotText45
	waitbutton
	closetext
	end

.Aide60Caught45:
	writetext AideTextSuccess45
	giveitem TM51
	iffalse .NoRoom
	setevent EVENT_ROUTE_45_BLACKTHORN_GATE_AIDE
	waitbutton
	closetext
	end

.Aide60Caught45
	writetext AideTextSuccess45
	giveitem TM51
	closetext
	end

AideTextFailure45:
	text "Hmm… You don't have"
	line "enough #MON."

	para "No GIFT for you."
	done

AideTextSuccess45:
	text "Oh! You do have"
	line "enough #MON."

	para "Here's TM51!"
	line "It's a new STEEL"
	cont "type move!"
	cont "Flash Cannon!"
	done

AideGotText45:
	text "I will head back"
	line "to the lab soon."

	para "Good luck on your"
	line "journey"
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
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route45BlackthornGateAideDexCheckScript, EVENT_ROUTE_45_BLACKTHORN_GATE_AIDE

MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0,   600, MOM_ITEM, SUPER_POTION
	momitem      0,    90, MOM_ITEM, ANTIDOTE
	momitem      0,   180, MOM_ITEM, POKE_BALL
	momitem      0,   450, MOM_ITEM, ESCAPE_ROPE
	momitem      0,   500, MOM_ITEM, GREAT_BALL
.End

MomItems_2:
	momitem   2000,  1000, MOM_ITEM, MOON_STONE
	momitem   4000,  1000, MOM_ITEM, SUN_STONE
	momitem   8000,  2100, MOM_ITEM, LEAF_STONE
	momitem  10000,  1800, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem  16000,  2100, MOM_ITEM, FIRE_STONE
	momitem  32000,  2100, MOM_ITEM, WATER_STONE
	momitem  36000,  4800, MOM_DOLL, DECO_CLEFAIRY_DOLL
	momitem  64000,  2100, MOM_ITEM, THUNDERSTONE
	momitem  68000,  8000, MOM_DOLL, DECO_PIKACHU_DOLL
	momitem 100000, 22800, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
.End

	dt 0 ; unused

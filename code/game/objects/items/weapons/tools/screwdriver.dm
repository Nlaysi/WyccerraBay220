/obj/item/screwdriver
	name = "screwdriver"
	desc = "Your archetypal flathead screwdriver, with a nice, heavy polymer handle."
	icon = 'icons/obj/tools/screwdriver.dmi'
	icon_state = "screwdriver_preview"
	item_state = "screwdriver"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT | SLOT_EARS
	force = 4.0
	w_class = ITEM_SIZE_TINY
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	matter = list(MATERIAL_STEEL = 75)
	center_of_mass = "x=16;y=7"
	attack_verb = list("stabbed")
	lock_picking_level = 5
	sharp = TRUE
	item_flags = ITEM_FLAG_CAN_HIDE_IN_SHOES
	tool_behaviour = TOOL_SCREWDRIVER
	usesound = DEFAULT_SCREWDRIVER_SOUND

	var/build_from_parts = TRUE
	var/valid_colours = list(COLOR_RED, COLOR_CYAN_BLUE, COLOR_PURPLE, COLOR_CHESTNUT, COLOR_GREEN, COLOR_TEAL, COLOR_ASSEMBLY_YELLOW, COLOR_BOTTLE_GREEN, COLOR_VIOLET, COLOR_GRAY80, COLOR_GRAY20)

/obj/item/screwdriver/Initialize()
	if(build_from_parts)
		icon_state = "screwdriver_handle"
		color = pick(valid_colours)
		AddOverlays(overlay_image(icon, "screwdriver_hardware", flags=RESET_COLOR))
	if (prob(75))
		src.pixel_y = rand(0, 16)
	. = ..()

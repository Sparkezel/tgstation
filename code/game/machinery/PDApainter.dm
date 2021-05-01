/obj/machinery/pdapainter
	name = "\improper PDA painter"
	desc = "A PDA painting machine. To use, simply insert your PDA and choose the desired preset paint scheme."
	icon = 'icons/obj/pda.dmi'
	icon_state = "pdapainter"
	base_icon_state = "pdapainter"
	density = TRUE
	max_integrity = 200
	var/obj/item/pda/storedpda = null
	var/list/colorlist = list()

/obj/machinery/pdapainter/update_icon_state()
	if(machine_stat & BROKEN)
		icon_state = "[base_icon_state]-broken"
		return ..()
	icon_state = "[base_icon_state][powered() ? null : "-off"]"
	return ..()

/obj/machinery/pdapainter/update_overlays()
	. = ..()

	if(machine_stat & BROKEN)
		return

	if(storedpda)
		. += "[initial(icon_state)]-closed"

/obj/machinery/pdapainter/Initialize()
	. = ..()
	var/list/blocked = list(
		/obj/item/pda/ai/pai,
		/obj/item/pda/ai,
		/obj/item/pda/heads,
		/obj/item/pda/clear,
		/obj/item/pda/syndicate,
		/obj/item/pda/chameleon,
		/obj/item/pda/chameleon/broken)

	for(var/P in typesof(/obj/item/pda) - blocked)
		var/obj/item/pda/D = new P
<<<<<<< HEAD
<<<<<<< HEAD

		//D.name = "PDA Style [colorlist.len+1]" //Gotta set the name, otherwise it all comes up as "PDA"
		D.name = D.icon_state //PDAs don't have unique names, but using the sprite names works.

=======

		//D.name = "PDA Style [colorlist.len+1]" //Gotta set the name, otherwise it all comes up as "PDA"
		D.name = D.icon_state //PDAs don't have unique names, but using the sprite names works.

>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======

		//D.name = "PDA Style [colorlist.len+1]" //Gotta set the name, otherwise it all comes up as "PDA"
		D.name = D.icon_state //PDAs don't have unique names, but using the sprite names works.

>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
		src.colorlist += D

/obj/machinery/pdapainter/Destroy()
	QDEL_NULL(storedpda)
	return ..()

/obj/machinery/pdapainter/on_deconstruction()
	if(storedpda)
		storedpda.forceMove(loc)
		storedpda = null

/obj/machinery/pdapainter/contents_explosion(severity, target)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	switch(severity)
		if(EXPLODE_DEVASTATE)
			if(stored_pda)
				SSexplosions.high_mov_atom += stored_pda
			if(stored_id_card)
				SSexplosions.high_mov_atom += stored_id_card
		if(EXPLODE_HEAVY)
			if(stored_pda)
				SSexplosions.med_mov_atom += stored_pda
			if(stored_id_card)
				SSexplosions.med_mov_atom += stored_id_card
		if(EXPLODE_LIGHT)
			if(stored_pda)
				SSexplosions.low_mov_atom += stored_pda
			if(stored_id_card)
				SSexplosions.low_mov_atom += stored_id_card
=======
	if(storedpda)
		storedpda.ex_act(severity, target)
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	if(storedpda)
		storedpda.ex_act(severity, target)
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	if(storedpda)
		storedpda.ex_act(severity, target)
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/obj/machinery/pdapainter/handle_atom_del(atom/A)
	if(A == storedpda)
		storedpda = null
		update_appearance()

/obj/machinery/pdapainter/attackby(obj/item/O, mob/living/user, params)
	if(machine_stat & BROKEN)
		if(O.tool_behaviour == TOOL_WELDER && !user.combat_mode)
			if(!O.tool_start_check(user, amount=0))
				return
			user.visible_message("<span class='notice'>[user] is repairing [src].</span>", \
							"<span class='notice'>You begin repairing [src]...</span>", \
							"<span class='hear'>You hear welding.</span>")
			if(O.use_tool(src, user, 40, volume=50))
				if(!(machine_stat & BROKEN))
					return
				to_chat(user, "<span class='notice'>You repair [src].</span>")
				set_machine_stat(machine_stat & ~BROKEN)
				obj_integrity = max_integrity
				update_appearance()

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	if(default_unfasten_wrench(user, O))
		power_change()
		return

	// Chameleon checks first so they can exit the logic early if they're detected.
	if(istype(O, /obj/item/card/id/advanced/chameleon))
		to_chat(user, "<span class='warning'>The machine rejects your [O]. This ID card does not appear to be compatible with the PDA Painter.</span>")
		return

	if(istype(O, /obj/item/pda/chameleon))
		to_chat(user, "<span class='warning'>The machine rejects your [O]. This PDA does not appear to be compatible with the PDA Painter.</span>")
		return
=======
		else
			return ..()
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
		else
			return ..()
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
		else
			return ..()
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

	else if(default_unfasten_wrench(user, O))
		power_change()
		return

	else if(istype(O, /obj/item/pda))
		if(storedpda)
			to_chat(user, "<span class='warning'>There is already a PDA inside!</span>")
			return
		else if(!user.transferItemToLoc(O, src))
			return
		storedpda = O
		O.add_fingerprint(user)
		update_appearance()

	else
		return ..()

/obj/machinery/pdapainter/deconstruct(disassembled = TRUE)
	obj_break()

/obj/machinery/pdapainter/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	switch(action)
		if("eject_pda")
			if((machine_stat & BROKEN))
				return TRUE

			var/obj/item/held_item = usr.get_active_held_item()
			if(istype(held_item, /obj/item/pda))
				// If we successfully inserted, we've ejected the old item. Return early.
				if(insert_pda(held_item, usr))
					return TRUE
			// If we did not successfully insert, try to eject.
			if(stored_pda)
				eject_pda(usr)
				return TRUE

			return TRUE
		if("eject_card")
			if((machine_stat & BROKEN))
				return TRUE

			var/obj/item/held_item = usr.get_active_held_item()
			if(istype(held_item, /obj/item/card/id))
				// If we successfully inserted, we've ejected the old item. Return early.
				if(insert_id_card(held_item, usr))
					return TRUE
			// If we did not successfully insert, try to eject.
			if(stored_id_card)
				eject_id_card(usr)
				return TRUE

			return TRUE
		if("trim_pda")
			if((machine_stat & BROKEN) || !stored_pda)
				return TRUE

			var/selection = params["selection"]
			for(var/path in pda_types)
				if(!(pda_types[path] == selection))
					continue

				var/obj/item/pda/pda_path = path
				stored_pda.icon_state = initial(pda_path.icon_state)
				stored_pda.desc = initial(pda_path.desc)
			return TRUE
		if("trim_card")
			if((machine_stat & BROKEN) || !stored_id_card)
				return TRUE

			var/selection = params["selection"]
			for(var/path in card_trims)
				if(!(card_trims[path] == selection))
					continue

				if(SSid_access.apply_trim_to_card(stored_id_card, path, copy_access = FALSE))
					return TRUE

				to_chat(usr, "<span class='warning'>The trim you selected could not be added to \the [stored_id_card]. You will need a rarer ID card to imprint that trim data.</span>")

			return TRUE
		if("reset_card")
			if((machine_stat & BROKEN) || !stored_id_card)
				return TRUE

			stored_id_card.clear_account()
=======
	if(storedpda)
		if(machine_stat & BROKEN) //otherwise the PDA is stuck until repaired
			ejectpda()
			to_chat(user, "<span class='info'>You manage to eject the loaded PDA.</span>")
		else
			var/obj/item/pda/P
			P = input(user, "Select your color!", "PDA Painting") as null|anything in sortNames(colorlist)
			if(!P)
				return
			if(!in_range(src, user))
				return
			if(!storedpda)//is the pda still there?
				return
			storedpda.icon_state = P.icon_state
			storedpda.desc = P.desc
			ejectpda()
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

	else
		to_chat(user, "<span class='warning'>[src] is empty!</span>")

=======
	if(storedpda)
		if(machine_stat & BROKEN) //otherwise the PDA is stuck until repaired
			ejectpda()
			to_chat(user, "<span class='info'>You manage to eject the loaded PDA.</span>")
		else
			var/obj/item/pda/P
			P = input(user, "Select your color!", "PDA Painting") as null|anything in sortNames(colorlist)
			if(!P)
				return
			if(!in_range(src, user))
				return
			if(!storedpda)//is the pda still there?
				return
			storedpda.icon_state = P.icon_state
			storedpda.desc = P.desc
			ejectpda()

	else
		to_chat(user, "<span class='warning'>[src] is empty!</span>")

>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

=======
	if(storedpda)
		if(machine_stat & BROKEN) //otherwise the PDA is stuck until repaired
			ejectpda()
			to_chat(user, "<span class='info'>You manage to eject the loaded PDA.</span>")
		else
			var/obj/item/pda/P
			P = input(user, "Select your color!", "PDA Painting") as null|anything in sortNames(colorlist)
			if(!P)
				return
			if(!in_range(src, user))
				return
			if(!storedpda)//is the pda still there?
				return
			storedpda.icon_state = P.icon_state
			storedpda.desc = P.desc
			ejectpda()

	else
		to_chat(user, "<span class='warning'>[src] is empty!</span>")


>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
/obj/machinery/pdapainter/verb/ejectpda()
	set name = "Eject PDA"
	set category = "Object"
	set src in oview(1)

	if(usr.stat != CONSCIOUS || HAS_TRAIT(usr, TRAIT_HANDS_BLOCKED))
		return

	if(storedpda)
		storedpda.forceMove(drop_location())
		storedpda = null
		update_appearance()
	else
		to_chat(usr, "<span class='warning'>[src] is empty!</span>")

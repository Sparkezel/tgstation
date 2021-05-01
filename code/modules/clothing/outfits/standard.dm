/datum/outfit/centcom/spec_ops
	name = "Special Ops Officer"

	id = /obj/item/card/id/advanced/centcom
	id_trim = /datum/id_trim/centcom/specops_officer
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/space/officer
	back = /obj/item/storage/backpack/satchel/leather
	belt = /obj/item/gun/energy/pulse/pistol/m1911
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	head = /obj/item/clothing/head/helmet/space/beret
	mask = /obj/item/clothing/mask/cigarette/cigar/havana
	shoes = /obj/item/clothing/shoes/combat/swat
	r_pocket = /obj/item/lighter
<<<<<<< HEAD
=======
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/centcom/spec_ops/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()
	W.access += get_centcom_access("Special Ops Officer")
	W.assignment = "Special Ops Officer"
	W.registered_name = H.real_name
	W.update_label()

	var/obj/item/radio/headset/R = H.ears
	R.set_frequency(FREQ_CENTCOM)
	R.freqlock = TRUE
	..()

/datum/outfit/space
	name = "Standard Space Gear"

	uniform = /obj/item/clothing/under/color/grey
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/space
	back = /obj/item/tank/jetpack/oxygen
	head = /obj/item/clothing/head/helmet/space
	mask = /obj/item/clothing/mask/breath

/datum/outfit/tournament
	name = "tournament standard red"

	uniform = /obj/item/clothing/under/color/red
	suit = /obj/item/clothing/suit/armor/vest
	head = /obj/item/clothing/head/helmet/thunderdome
	shoes = /obj/item/clothing/shoes/sneakers/black
	l_hand = /obj/item/gun/energy/pulse/destroyer
	l_pocket = /obj/item/kitchen/knife
	r_pocket = /obj/item/grenade/smokebomb

/datum/outfit/tournament/green
	name = "tournament standard green"

	uniform = /obj/item/clothing/under/color/green

/datum/outfit/tournament/gangster
	name = "tournament gangster"

	uniform = /obj/item/clothing/under/rank/security/detective
	suit = /obj/item/clothing/suit/det_suit
	glasses = /obj/item/clothing/glasses/thermal/monocle
	head = /obj/item/clothing/head/fedora/det_hat
	l_hand = /obj/item/gun/ballistic
	l_hand = null
	r_pocket = /obj/item/ammo_box/c10mm

/datum/outfit/tournament/janitor
	name = "tournament janitor"

	uniform = /obj/item/clothing/under/rank/civilian/janitor
	suit = null
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/stack/tile/iron = 6,
)
	head = null
	r_pocket = /obj/item/grenade/chem_grenade/cleaner
	l_pocket = /obj/item/grenade/chem_grenade/cleaner
	r_hand = /obj/item/mop
	l_hand = /obj/item/reagent_containers/glass/bucket

/datum/outfit/tournament/janitor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/reagent_containers/glass/bucket/bucket = H.get_item_for_held_index(1)
	bucket.reagents.add_reagent(/datum/reagent/water,70)

/datum/outfit/laser_tag
	name = "Laser Tag Red"

	uniform = /obj/item/clothing/under/color/red
	suit = /obj/item/clothing/suit/redtag
	suit_store = /obj/item/gun/energy/laser/redtag
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/storage/box = 1,
)
	ears = /obj/item/radio/headset
	gloves = /obj/item/clothing/gloves/color/red
	head = /obj/item/clothing/head/helmet/redtaghelm
	shoes = /obj/item/clothing/shoes/sneakers/red

/datum/outfit/laser_tag/blue
	name = "Laser Tag Blue"

	uniform = /obj/item/clothing/under/color/blue
	suit = /obj/item/clothing/suit/bluetag
	suit_store = /obj/item/gun/energy/laser/bluetag
	gloves = /obj/item/clothing/gloves/color/blue
	head = /obj/item/clothing/head/helmet/bluetaghelm
	shoes = /obj/item/clothing/shoes/sneakers/blue

/datum/outfit/pirate
	name = "Space Pirate"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/pirate
	uniform = /obj/item/clothing/under/costume/pirate
	suit = /obj/item/clothing/suit/pirate/armored
	ears = /obj/item/radio/headset/syndicate
	glasses = /obj/item/clothing/glasses/eyepatch
	head = /obj/item/clothing/head/bandana/armored
	shoes = /obj/item/clothing/shoes/sneakers/brown

/datum/outfit/pirate/post_equip(mob/living/carbon/human/equipped)
	equipped.faction |= "pirate"

	var/obj/item/radio/outfit_radio = equipped.ears
	if(outfit_radio)
		outfit_radio.set_frequency(FREQ_SYNDICATE)
		outfit_radio.freqlock = TRUE

	var/obj/item/card/id/outfit_id = equipped.wear_id
	if(outfit_id)
		outfit_id.registered_name = equipped.real_name
		outfit_id.update_label()

/datum/outfit/pirate/captain
	name = "Space Pirate Captain"

	id_trim = /datum/id_trim/pirate/captain
	head = /obj/item/clothing/head/pirate/armored

/datum/outfit/pirate/space
	name = "Space Pirate (EVA)"

	suit = /obj/item/clothing/suit/space/pirate
	suit_store = /obj/item/tank/internals/oxygen
	head = /obj/item/clothing/head/helmet/space/pirate/bandana
	mask = /obj/item/clothing/mask/breath
<<<<<<< HEAD
=======
	suit_store = /obj/item/tank/internals/oxygen
	id = /obj/item/card/id
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/pirate/space/captain
	name = "Space Pirate Captain (EVA)"

	head = /obj/item/clothing/head/helmet/space/pirate

/datum/outfit/pirate/silverscale
	name = "Silver Scale Member"

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/pirate/silverscale
	uniform = /obj/item/clothing/under/suit/charcoal
	suit = /obj/item/clothing/suit/armor/vest/alt
	glasses = /obj/item/clothing/glasses/monocle
	gloves = /obj/item/clothing/gloves/color/black
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	head = /obj/item/clothing/head/collectable/tophat
	shoes = /obj/item/clothing/shoes/laceup
=======
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

	id = /obj/item/card/id/silver

	///special fluff for the ID's job
	var/scale_assignment = "Silver Scale Member"

/datum/outfit/pirate/silverscale/post_equip(mob/living/carbon/human/equipped)
	..()
	var/obj/item/card/id/outfit_id = equipped.wear_id
	if(outfit_id)
		outfit_id.assignment = scale_assignment
		outfit_id.update_label()
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/pirate/silverscale/captain
	name = "Silver Scale Captain"

	id_trim = /datum/id_trim/pirate/captain/silverscale
	head = /obj/item/clothing/head/crown
	mask = /obj/item/clothing/mask/cigarette/cigar/havana
	l_pocket = /obj/item/lighter
<<<<<<< HEAD
=======
	head = /obj/item/clothing/head/crown

	scale_assignment = "Silver Scale VIP"
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/tunnel_clown
	name = "Tunnel Clown"

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/tunnel_clown
	uniform = /obj/item/clothing/under/rank/civilian/clown
	suit = /obj/item/clothing/suit/hooded/chaplain_hoodie
	ears = /obj/item/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/monocle
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/gas/clown_hat
	shoes = /obj/item/clothing/shoes/clown_shoes
	l_pocket = /obj/item/food/grown/banana
	r_pocket = /obj/item/bikehorn
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
	l_hand = /obj/item/fireaxe

/datum/outfit/tunnel_clown/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()
	W.assignment = "Tunnel Clown!"
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/psycho
	name = "Masked Killer"

	uniform = /obj/item/clothing/under/misc/overalls
	suit = /obj/item/clothing/suit/apron
	shoes = /obj/item/clothing/shoes/sneakers/white
	ears = /obj/item/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/monocle
	gloves = /obj/item/clothing/gloves/color/latex
	head = /obj/item/clothing/head/welding
	mask = /obj/item/clothing/mask/surgical
	l_pocket = /obj/item/kitchen/knife
	r_pocket = /obj/item/scalpel
	l_hand = /obj/item/fireaxe

/datum/outfit/psycho/post_equip(mob/living/carbon/human/H)
	for(var/obj/item/carried_item in H.get_equipped_items(TRUE))
		carried_item.add_mob_blood(H)//Oh yes, there will be blood...
	for(var/obj/item/I in H.held_items)
		I.add_mob_blood(H)
	H.regenerate_icons()

/datum/outfit/assassin
	name = "Assassin"

	id = /obj/item/card/id/advanced/chameleon/black
	id_trim = /datum/id_trim/reaper_assassin
	uniform = /obj/item/clothing/under/suit/black
	belt = /obj/item/pda/heads
	ears = /obj/item/radio/headset
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/sneakers/black
	l_pocket = /obj/item/melee/transforming/energy/sword/saber
	l_hand = /obj/item/storage/secure/briefcase
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
	id = /obj/item/card/id/syndicate
	belt = /obj/item/pda/heads
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id/syndicate
	belt = /obj/item/pda/heads
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id/syndicate
	belt = /obj/item/pda/heads
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/assassin/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	var/obj/item/clothing/under/U = H.w_uniform
	U.attach_accessory(new /obj/item/clothing/accessory/waistcoat(H))

	if(visualsOnly)
		return

	//Could use a type
	var/obj/item/storage/secure/briefcase/sec_briefcase = H.get_item_for_held_index(1)
	for(var/obj/item/briefcase_item in sec_briefcase)
		qdel(briefcase_item)
	for(var/i = 3 to 0 step -1)
		SEND_SIGNAL(sec_briefcase, COMSIG_TRY_STORAGE_INSERT, new /obj/item/stack/spacecash/c1000, null, TRUE, TRUE)
	SEND_SIGNAL(sec_briefcase, COMSIG_TRY_STORAGE_INSERT, new /obj/item/gun/energy/kinetic_accelerator/crossbow, null, TRUE, TRUE)
	SEND_SIGNAL(sec_briefcase, COMSIG_TRY_STORAGE_INSERT, new /obj/item/gun/ballistic/revolver/mateba, null, TRUE, TRUE)
	SEND_SIGNAL(sec_briefcase, COMSIG_TRY_STORAGE_INSERT, new /obj/item/ammo_box/a357, null, TRUE, TRUE)
	SEND_SIGNAL(sec_briefcase, COMSIG_TRY_STORAGE_INSERT, new /obj/item/grenade/c4/x4, null, TRUE, TRUE)

	var/obj/item/pda/heads/pda = H.belt
	pda.owner = H.real_name
	pda.ownjob = "Reaper"
	pda.update_label()

	var/obj/item/card/id/syndicate/W = H.wear_id
	W.access = get_all_accesses()
	W.assignment = "Reaper"
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/centcom/commander
	name = "CentCom Commander"

	id = /obj/item/card/id/advanced/centcom
	id_trim = /datum/id_trim/centcom/commander
	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/armor/bulletproof
	back = /obj/item/storage/backpack/satchel/leather
	belt = /obj/item/gun/ballistic/revolver/mateba
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/eyepatch
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	head = /obj/item/clothing/head/centhat
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	shoes = /obj/item/clothing/shoes/combat/swat
	l_pocket = /obj/item/ammo_box/a357
<<<<<<< HEAD
	r_pocket = /obj/item/lighter
=======
	back = /obj/item/storage/backpack/satchel/leather
	id = /obj/item/card/id/centcom
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/centcom/commander/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()
	W.access += get_centcom_access("CentCom Commander")
	W.assignment = "CentCom Commander"
	W.registered_name = H.real_name
	W.update_label()
	..()

/datum/outfit/ghost_cultist
	name = "Cultist Ghost"

	uniform = /obj/item/clothing/under/color/black/ghost
	suit = /obj/item/clothing/suit/hooded/cultrobes/alt/ghost
	shoes = /obj/item/clothing/shoes/cult/alt/ghost
	l_hand = /obj/item/melee/cultblade/ghost

/datum/outfit/wizard
	name = "Blue Wizard"

	uniform = /obj/item/clothing/under/color/lightpurple
	suit = /obj/item/clothing/suit/wizrobe
	back = /obj/item/storage/backpack
	backpack_contents = list(
		/obj/item/storage/box/survival = 1,
)
	ears = /obj/item/radio/headset
	head = /obj/item/clothing/head/wizard
	shoes = /obj/item/clothing/shoes/sandal/magic
	r_pocket = /obj/item/teleportation_scroll
	l_hand = /obj/item/staff
	r_hand = /obj/item/spellbook

/datum/outfit/wizard/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/spellbook/S = locate() in H.held_items
	if(S)
		S.owner = H

/datum/outfit/wizard/apprentice
	name = "Wizard Apprentice"

	r_pocket = /obj/item/teleportation_scroll/apprentice
	r_hand = null
	l_hand = null

/datum/outfit/wizard/red
	name = "Red Wizard"

	suit = /obj/item/clothing/suit/wizrobe/red
	head = /obj/item/clothing/head/wizard/red

/datum/outfit/wizard/weeb
	name = "Marisa Wizard"

	suit = /obj/item/clothing/suit/wizrobe/marisa
	head = /obj/item/clothing/head/wizard/marisa
	shoes = /obj/item/clothing/shoes/sandal/marisa

/datum/outfit/centcom/soviet
	name = "Soviet Admiral"

	id = /obj/item/card/id/advanced/centcom
	id_trim = /datum/id_trim/centcom/admiral
	uniform = /obj/item/clothing/under/costume/soviet
	suit = /obj/item/clothing/suit/pirate/captain
	back = /obj/item/storage/backpack/satchel/leather
	belt = /obj/item/gun/ballistic/revolver/mateba
<<<<<<< HEAD
	ears = /obj/item/radio/headset/headset_cent
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	head = /obj/item/clothing/head/pirate/captain
	shoes = /obj/item/clothing/shoes/combat
=======

	id = /obj/item/card/id/centcom
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/centcom/soviet/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()
	W.access += get_centcom_access("Admiral")
	W.assignment = "Admiral"
	W.registered_name = H.real_name
	W.update_label()
	..()

/datum/outfit/mobster
	name = "Mobster"

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/mobster
	uniform = /obj/item/clothing/under/suit/black_really
	ears = /obj/item/radio/headset
	glasses = /obj/item/clothing/glasses/sunglasses
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/fedora
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/gun/ballistic/automatic/tommygun
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
	id = /obj/item/card/id
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))

/datum/outfit/mobster/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.assignment = "Assistant"
	W.registered_name = H.real_name
	W.update_label()

<<<<<<< HEAD
=======
/datum/outfit/plasmaman
	name = "Plasmaman"

	head = /obj/item/clothing/head/helmet/space/plasmaman
	uniform = /obj/item/clothing/under/plasmaman
	r_hand= /obj/item/tank/internals/plasmaman/belt/full
	mask = /obj/item/clothing/mask/breath
	gloves = /obj/item/clothing/gloves/color/plasmaman


/datum/outfit/centcom/death_commando
	name = "Death Commando"

	uniform = /obj/item/clothing/under/rank/centcom/commander
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	mask = /obj/item/clothing/mask/gas/sechailer/swat
	glasses = /obj/item/clothing/glasses/hud/toggle/thermal
	back = /obj/item/storage/backpack/security
	l_pocket = /obj/item/melee/transforming/energy/sword/saber
	r_pocket = /obj/item/shield/energy
	suit_store = /obj/item/tank/internals/emergency_oxygen/double
	belt = /obj/item/gun/ballistic/revolver/mateba
	l_hand = /obj/item/gun/energy/pulse/loyalpin
	id = /obj/item/card/id/ert/deathsquad
	ears = /obj/item/radio/headset/headset_cent/alt

	skillchips = list(/obj/item/skillchip/disk_verifier)

	backpack_contents = list(/obj/item/storage/box/survival/engineer=1,\
		/obj/item/ammo_box/a357=1,\
		/obj/item/storage/firstaid/regular=1,\
		/obj/item/storage/box/flashbangs=1,\
		/obj/item/flashlight=1,\
		/obj/item/grenade/c4/x4=1)

/datum/outfit/centcom/death_commando/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/radio/R = H.ears
	R.set_frequency(FREQ_CENTCOM)
	R.freqlock = TRUE
	var/obj/item/card/id/W = H.wear_id
	W.access = get_all_accesses()//They get full station access.
	W.access += get_centcom_access("Death Commando")//Let's add their alloted CentCom access.
	W.assignment = "Death Commando"
	W.registered_name = H.real_name
	W.update_label()
	..()

/datum/outfit/centcom/death_commando/officer
	name = "Death Commando Officer"
	head = /obj/item/clothing/head/helmet/space/beret

>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
/datum/outfit/chrono_agent
	name = "Timeline Eradication Agent"

	uniform = /obj/item/clothing/under/color/white
	suit = /obj/item/clothing/suit/space/chronos
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/chrono_eraser
	head = /obj/item/clothing/head/helmet/space/chronos
	mask = /obj/item/clothing/mask/breath

/datum/outfit/debug //Debug objs plus hardsuit
	name = "Debug outfit"

	id = /obj/item/card/id/advanced/debug
	uniform = /obj/item/clothing/under/misc/patriotsuit
	suit = /obj/item/clothing/suit/space/hardsuit/syndi/elite/debug
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/storage/backpack/holding
	backpack_contents = list(
		/obj/item/melee/transforming/energy/axe = 1,
		/obj/item/storage/part_replacer/bluespace/tier4 = 1,
		/obj/item/gun/magic/wand/resurrection/debug = 1,
		/obj/item/gun/magic/wand/death/debug = 1,
		/obj/item/debug/human_spawner = 1,
		/obj/item/debug/omnitool = 1,
)
	belt = /obj/item/storage/belt/utility/chief/full
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/debug
	gloves = /obj/item/clothing/gloves/combat
	mask = /obj/item/clothing/mask/gas/welding/up
	shoes = /obj/item/clothing/shoes/magboots/advance
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
	id = /obj/item/card/id/debug
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/storage/backpack/holding
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
	box = /obj/item/storage/box/debugtools
	internals_slot = ITEM_SLOT_SUITSTORE

/datum/outfit/debug/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	var/obj/item/card/id/W = H.wear_id
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/admin //for admeem shenanigans and testing things that arent related to equipment, not a subtype of debug just in case debug changes things
	name = "Admin outfit"

	id = /obj/item/card/id/advanced/debug
	uniform = /obj/item/clothing/under/misc/patriotsuit
	suit = /obj/item/clothing/suit/space/hardsuit/syndi/elite/admin
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/storage/backpack/holding
	backpack_contents = list(
		/obj/item/melee/transforming/energy/axe = 1,
		/obj/item/storage/part_replacer/bluespace/tier4 = 1,
		/obj/item/gun/magic/wand/resurrection/debug = 1,
		/obj/item/gun/magic/wand/death/debug = 1,
		/obj/item/debug/human_spawner = 1,
		/obj/item/debug/omnitool = 1,
		/obj/item/storage/box/stabilized = 1,
)
	belt = /obj/item/storage/belt/utility/chief/full
	ears = /obj/item/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/debug
	gloves = /obj/item/clothing/gloves/combat
	mask = /obj/item/clothing/mask/gas/welding/up
	shoes = /obj/item/clothing/shoes/magboots/advance
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
=======
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
	id = /obj/item/card/id/debug
	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/storage/backpack/holding
>>>>>>> parent of 890615856e (Fully implements the ID Card design document (#56910))
	box = /obj/item/storage/box/debugtools
	internals_slot = ITEM_SLOT_SUITSTORE

/datum/outfit/admin/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	var/obj/item/card/id/W = H.wear_id
	W.registered_name = H.real_name
	W.update_label()

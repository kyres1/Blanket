//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:31

/obj/machinery/computer/operating
	name = "patient monitoring console"
	desc = "A console that displays information on the status of the patient on an adjacent operating table."
	density = TRUE
	anchored = TRUE

	light_color = LIGHT_COLOR_CYAN
	icon_screen = "crew"
	circuit = /obj/item/circuitboard/operating
	var/mob/living/carbon/human/victim = null
	var/obj/machinery/optable/table = null

/obj/machinery/computer/operating/Initialize()
	. = ..()
	for(dir in list(NORTH,EAST,SOUTH,WEST))
		table = locate(/obj/machinery/optable, get_step(src, dir))
		if (table)
			table.computer = src
			break

/obj/machinery/computer/operating/attack_ai(mob/user)
	if(!ai_can_interact(user))
		return
	add_fingerprint(user)
	if(stat & (BROKEN|NOPOWER))
		return
	interact(user)


/obj/machinery/computer/operating/attack_hand(mob/user)
	add_fingerprint(user)
	if(stat & (BROKEN|NOPOWER))
		return
	interact(user)


/obj/machinery/computer/operating/interact(mob/user)
	if ( (get_dist(src, user) > 1 ) || (stat & (BROKEN|NOPOWER)) )
		if (!istype(user, /mob/living/silicon))
			user.unset_machine()
			user << browse(null, "window=op")
			return

	user.set_machine(src)
	var/dat = "<HEAD><TITLE>Operating Computer</TITLE><META HTTP-EQUIV='Refresh' CONTENT='10'></HEAD><BODY>\n"
	if(src.table && (src.table.check_victim()))
		src.victim = src.table.victim
		dat += {"
<B>Patient Information:</B><BR>
Brain Activity: <b>[victim.isFBP() ? "<span class='danger'>N/A</span>" : victim.get_brain_status()]</b><br>
Pulse: <b>[victim.get_pulse(GETPULSE_TOOL)]</b><br>
BP: <b>[victim.get_blood_pressure()]</b><br>
Blood Oxygenation: <b>[victim.get_blood_oxygenation()]</b><br>
"}
	else
		src.victim = null
		dat += {"
<B>Patient Information:</B><BR>
<BR>
<B>No Patient Detected</B>
"}
	var/datum/browser/op_win = new(user, "op", capitalize_first_letters(name), 200, 200)
	op_win.set_content(dat)
	op_win.open()

/obj/machinery/computer/operating/examine(mob/user)
	..()
	if(get_dist(src, user) <= 2)
		if(src.table && (src.table.check_victim()))
			src.victim = src.table.victim

			to_chat(user, SPAN_NOTICE("Patient Info:"))
			to_chat(user, SPAN_NOTICE("Brain Activity: [victim.isFBP() ? "N/A" : victim.get_brain_status()]"))
			to_chat(user, SPAN_NOTICE("Pulse: [victim.get_pulse(GETPULSE_TOOL)]"))
			to_chat(user, SPAN_NOTICE("BP: [victim.get_blood_pressure()]"))
			to_chat(user, SPAN_NOTICE("Blood Oxygenation: [victim.get_blood_oxygenation()]"))
		else
			src.victim = null
			to_chat(user, SPAN_NOTICE("No Patient Detected"))

/obj/machinery/computer/operating/Topic(href, href_list)
	if(..())
		return 1
	if ((usr.contents.Find(src) || (in_range(src, usr) && istype(src.loc, /turf))) || (istype(usr, /mob/living/silicon)))
		usr.set_machine(src)
	return


/obj/machinery/computer/operating/machinery_process()
	if(operable())
		src.updateDialog()

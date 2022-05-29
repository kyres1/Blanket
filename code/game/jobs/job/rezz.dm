/datum/job/patron
	title = "Club Patron"
	flag = PATRON
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 20
	spawn_positions = 20
	supervisors = "nobody"
	selection_color = "#03fc28"
	economic_modifier = 7
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/patron

/datum/outfit/job/patron
	name = "Club Patron"
	jobtype = /datum/job/patron

	uniform = /obj/item/clothing/under/color/grey
	shoes = /obj/item/clothing/shoes/white

/datum/job/nonaffiliate
	title = "ECF Verified"
	flag = NONAFFILIATE
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 20
	spawn_positions = 20
	supervisors = "nobody"
	selection_color = "#ca03fc"
	economic_modifier = 0
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/nonaffiliate

/datum/outfit/job/nonaffiliate
	name = "Nonaffiliate"
	jobtype = /datum/job/nonaffiliate

	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/black

/datum/job/rezz_staff
	title = "Club Staff"
	flag = STAFF
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 20
	spawn_positions = 20
	supervisors = "THE BOSS.."
	selection_color = "#ca03fc"
	economic_modifier = 7
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/rezz_staff

/datum/outfit/job/rezz_staff
	name = "Club Staff"
	jobtype = /datum/job/rezz_staff

	uniform = /obj/item/clothing/under/color/red
	shoes = /obj/item/clothing/shoes/black

/datum/job/rezz_boss
	title = "Club Boss"
	flag = BOSS
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "money"
	selection_color = "#ebfc03"
	economic_modifier = 50
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/rezz_boss

/datum/outfit/job/rezz_boss
	name = "Club Boss"
	jobtype = /datum/job/rezz_boss

	uniform = /obj/item/clothing/under/color/green
	shoes = /obj/item/clothing/shoes/black

/datum/job/patron_vip
	title = "Club Patron - VIP"
	flag = VIP
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 20
	spawn_positions = 20
	supervisors = "nobody"
	selection_color = "#fc0303"
	economic_modifier = 20
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/patron_vip

/datum/outfit/job/patron_vip
	name = "Club Patron - VIP"
	jobtype = /datum/job/patron_vip

	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/white

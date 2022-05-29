var/const/NUM_JOB_DEPTS     = 3 //ENGSEC, MEDSCI and CIVILIAN
var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/HOS				=(1<<1)
var/const/WARDEN			=(1<<2)
var/const/FORENSICS			=(1<<3)
var/const/OFFICER			=(1<<4)
var/const/CHIEF				=(1<<5)
var/const/ENGINEER			=(1<<6)
var/const/ATMOSTECH			=(1<<7)
var/const/AI				=(1<<8)
var/const/CYBORG			=(1<<9)
var/const/INTERN_SEC		=(1<<10)
var/const/INTERN_ENG		=(1<<11)

var/const/MEDSCI			=(1<<1)

var/const/RD				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/CHEMIST			=(1<<2)
var/const/CMO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/SURGEON			=(1<<5)
var/const/VIROLOGIST		=(1<<6)
var/const/PSYCHIATRIST		=(1<<7)
var/const/ROBOTICIST		=(1<<8)
var/const/XENOBIOLOGIST		=(1<<9)
var/const/MED_TECH			=(1<<10)
var/const/INTERN_MED		=(1<<11)
var/const/INTERN_SCI		=(1<<12)


var/const/CIVILIAN			=(1<<2)

var/const/PATRON			=(1<<0)
var/const/NONAFFILIATE		=(1<<1)
var/const/STAFF				=(1<<2)
var/const/BOSS				=(1<<3)
var/const/VIP				=(1<<4)
var/const/LIBRARIAN			=(1<<5)
var/const/QUARTERMASTER		=(1<<6)
var/const/CARGOTECH			=(1<<7)
var/const/MINER				=(1<<8)
var/const/LAWYER			=(1<<9)
var/const/CHAPLAIN			=(1<<10)
var/const/VISITOR			=(1<<11)
var/const/CONSULAR			=(1<<12)
var/const/MERCHANT			=(1<<13)
var/const/JOURNALIST		=(1<<14)
var/const/ASSISTANT			=(1<<15)
var/const/HOP				=(1<<16)
var/const/BARTENDER			=(1<<17)
var/const/BOTANIST			=(1<<18)
var/const/CHEF				=(1<<19)
var/const/JANITOR			=(1<<20)


var/list/command_positions = list(
	"Club Boss"
)


var/list/engineering_positions = list(
	"N/A"
)


var/list/medical_positions = list(
	"N/A"
)


var/list/science_positions = list(
	"N/A"
)

//BS12 EDIT
var/list/cargo_positions = list(
	"N/A"
)

var/list/civilian_positions = list(
	"Wardrobe Test Role",
	"Club Patron",
	"ECF Verified",
	"Club Staff",
	"Club Boss",
	"Club Patron - VIP"
)


var/list/security_positions = list(
	"N/A"
)

var/list/nonhuman_positions = list(
	"N/A"
)

/proc/guest_jobbans(var/job)
	return ((job in command_positions) || job == "Corporate Liaison" || job == "Consular Officer")

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(J.title == job)
			titles = J.alt_titles

	return titles

//Mahzel : Job preview not added because code don't exist in BS12

/datum/map/rezz
	name = "Club Rezz"
	full_name = "Rezz Nightclub and Associates"
	path = "rezz"

	force_spawnpoint = TRUE

	lobby_icons = list('icons/misc/titlescreens/rezz/rezz.dmi')
	lobby_transitions =  null

	station_levels = list(1)
	admin_levels = list()
	contact_levels = list(1)
	player_levels = list(1)
	accessible_z_levels = list(1)
	meteor_levels = list(1)

	station_name = "Club Rezz"
	station_short = "Rezz"
	dock_name = "Oran Transcontinental Transit Hub"
	boss_name = "Corporate Federation"
	boss_short = "Corpfed"
	company_name = "Eridani"
	company_short = "ECF"

	use_overmap = FALSE

	shuttle_docked_message = "Attention district occupants. Power support to this district has been rescinded for overdue billing periods. Please pay your collective bills in a timely manner. Shutting down power in %ETA%."
	shuttle_leaving_dock = "Attention district occupants. Power support has begun shutting down. Total shutdown in %ETA%."
	shuttle_called_message = "Attention district occupants. Power support rescinded. Payment collectors will be dispatched in %ETA%. Please ensure you are prepared accordingly."
	shuttle_recall_message = "Attention district occupants. Payment collectors have arrived in the district. Your upkeep dues for this payment cycle average at ; 32,059.2 credits. This is 4% higher than previous ledgers. Have a great day."

	evac_controller_type = /datum/evacuation_controller/shuttle
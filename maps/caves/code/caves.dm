/datum/map/caves
	name = "Conglomerate Outpost ARU-42"
	full_name = "Arushan Outpost 42"
	path = "caves"

	force_spawnpoint = TRUE

	lobby_icons = list('icons/misc/titlescreens/caves/caves.dmi')
	lobby_transitions = 1000 SECONDS

	station_levels = list(1, 2, 3, 4)
	restricted_levels = list(1, 2, 3, 4)
	admin_levels = list()
	contact_levels = list()
	player_levels = list()
	accessible_z_levels = list()
	meteor_levels = list()

	base_turf_by_z = list(
		"1" = /turf/unsimulated/floor/dirt,
		"2" = /turf/unsimulated/floor/dirt,
		"3" = /turf/unsimulated/floor/dirt,
		"4" = /turf/simulated/lava
	)

	overmap_event_areas = 0

	station_name = "Arushan Outpost 42"
	station_short = "ARU-42"
	dock_name = "gravitational singularity bristling with stellar nightmares"
	boss_name = "Stellar Corporate Conglomerate"
	boss_short = "SCC"
	company_name = "Stellar Corporate Conglomerate"
	company_short = "SCC"

	use_overmap = FALSE

	shuttle_docked_message = "Attention all occupants. Cryogenic purge and facility lockdown for the day has begun. Please retire to your quarters. Lockdown in approximately %ETA%."
	shuttle_leaving_dock = "Attention all occupants, lockdown has begun. Cryogenic purge beginning in %ETA%."
	shuttle_called_message = "Attention all hands ; core drills are in place. Final facility lockdown in %ETA%."
	shuttle_recall_message = "Attention all hands: Lockdown sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	station_networks = list(
		NETWORK_CIVILIAN_MAIN,
		NETWORK_COMMAND,
		NETWORK_ENGINEERING,
	)
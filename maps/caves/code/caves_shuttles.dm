//-// Main Drill //-//
/datum/shuttle/autodock/multi/barge
	name = "Primary Drill"
	current_location = "nav_barge_start"
	warmup_time = 10
	shuttle_area = list(/area/shuttle/barge)
	dock_target = "Primary Drill"
	destination_tags = list(
		"nav_barge_start",
		"nav_barge_1",
		"nav_barge_2",
		"nav_barge_3"
		)

/obj/effect/shuttle_landmark/barge/start
	name = "Home Base - Outpost ARU-42"
	landmark_tag = "nav_barge_start"
	base_turf = /turf/unsimulated/floor/plating
	base_area = /area/caves

/obj/effect/shuttle_landmark/barge/one
	name = "Lithosphere - Planetary Crust (Low Danger)"
	landmark_tag = "nav_barge_1"
	landmark_flags = SLANDMARK_FLAG_AUTOSET

/obj/effect/shuttle_landmark/barge/two
	name = "Asthenosphere - Upper Mantle (High Danger)"
	landmark_tag = "nav_barge_2"
	landmark_flags = SLANDMARK_FLAG_AUTOSET

/obj/effect/shuttle_landmark/barge/three
	name = "Mantle - Upper Core (Extreme Danger)"
	landmark_tag = "nav_barge_3"
	landmark_flags = SLANDMARK_FLAG_AUTOSET
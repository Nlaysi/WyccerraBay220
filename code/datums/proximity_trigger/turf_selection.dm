/singleton/turf_selection/proc/get_turfs(atom/origin, range)
	return list()

/singleton/turf_selection/line/get_turfs(atom/origin, range)
	. = list()
	var/turf/center = get_turf(origin)
	if(!center)
		return
	for(var/i = 0 to range)
		center = get_step(center, origin.dir)
		if(!center) // Reached the end of the world most likely
			return
		. += center

/singleton/turf_selection/square/get_turfs(atom/origin, range)
	var/turf/center = get_turf(origin)
	if(!center)
		return list()

	return RANGE_TURFS(center, range)

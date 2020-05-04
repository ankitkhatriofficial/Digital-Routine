package com.DigitalRoutine.routine;

import java.util.List;
import java.util.ArrayList;

public class RoutineService {

	private static List<Routine> routines = new ArrayList<Routine>();

	public List<Routine> getRoutines() {
		return routines;
	}

	public void addRoutine(Routine routine) {
		routines.add(routine);
	}

	public void deleteRoutine(Routine routine) {
		routines.remove(routine);
	}
}

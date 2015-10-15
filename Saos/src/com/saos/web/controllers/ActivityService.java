package com.saos.web.controllers;

import java.util.List;

public interface ActivityService {
	public abstract void addActivity(Activity activity);
	public abstract Activity getActivity(int activityId);
	public abstract List<Activity> getAllActivity();

}

package com.saos.web.controllers;

import java.util.List;

public class ActivityServiceImpl implements ActivityService {
 
	ActivityDAO activityDAO;
	
	@Override
	public void addActivity(Activity activity) {
		activityDAO.addActivity(activity);
	}

	@Override
	public Activity getActivity(int activityId) {
		return null;
	}

	@Override
	public List<Activity> getAllActivity() {
		return activityDAO.getAllActivity();
	}

}

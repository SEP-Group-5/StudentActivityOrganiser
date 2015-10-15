package com.saos.web.controllers;

import java.util.*;

public class Activities {
	protected LinkedList<Activity> activities = new LinkedList<Activity>();
	protected int id = 0;
	protected Activity activity;
	
	public Activities()
	{
	}
	
	public void add(String title, Date startDate, Date endDate, Student host, String location,
			String description, double cost, int capacity)
	{
	   activities.add(new Activity(++id, title, startDate, endDate, host, location, description, cost, capacity));
	}
	
	public void add(Activity activity)
	{
		activities.add(activity);
	}
	
	public Activity find(int id)
	{
		for(Activity activity : activities)
		{
			if(activity.matches(id))
				return activity;
		}
		return null;
	}

}

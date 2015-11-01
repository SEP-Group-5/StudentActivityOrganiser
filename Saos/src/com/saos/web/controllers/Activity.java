package com.saos.web.controllers;

import java.util.*;

import org.springframework.format.annotation.DateTimeFormat;

public class Activity {
	private int id;
	private String title;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date start;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date end;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date rsvp;
	
	
	private int hostId;
	public int getHostId() {
		return hostId;
	}

	public void setHostId(int hostId) {
		this.hostId = hostId;
	}

	private String location;
	private String description;
	private double cost;
	private int capacity;
	private String status;
	public Activity() {
	}

	public Activity(int id, String title, String description, Date start, Date end, Date rsvp, String location,
			 double cost, int capacity, String status, int hostId) {
		this.id = id;
		this.title = title;
		this.start = start;
		this.end = end;
		this.rsvp = rsvp;
		this.hostId = hostId;
		this.location = location;
		this.description = description;
		this.cost = cost;
		this.capacity = capacity;
		this.status = "OPEN";
	}

	public boolean matches(Status status) {
		return this.status.equals(status);
	}

	public boolean matches(int id) {
		return this.id == id;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public Date getRsvp() {
		return rsvp;
	}

	public void setRsvp(Date rsvp) {
		this.rsvp = rsvp;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}

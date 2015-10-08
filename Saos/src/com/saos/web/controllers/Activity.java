package com.saos.web.controllers;
import java.util.*;

public class Activity {
	private int id;
	private String title;
	private Date startDate;
	private Date endDate;
	private Student host;
	private String location;
	private String description;
	private double cost;
	private int capacity;
	private Status status;
	private int participantCount;
	private Students participants;
	

	public Activity(int id, String title, Date startDate, Date endDate, Student host, String location,
			String description, double cost, int capacity) {
		super();
		this.id = id;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
		this.host = host;
		this.location = location;
		this.description = description;
		this.cost = cost;
		this.capacity = capacity;
		this.status = Status.Open;
	}

	public boolean matches(Status status)
	{
		return this.status.equals(status);
	}

	public int getId() {
		return id;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Student getHost() {
		return host;
	}

	public void setHost(Student host) {
		this.host = host;
	}

	public int getParticipantCount() {
		return participantCount;
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
	
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}
}

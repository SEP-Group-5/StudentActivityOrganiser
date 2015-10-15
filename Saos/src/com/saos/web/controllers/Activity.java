package com.saos.web.controllers;

import java.util.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

public class Activity {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Size(min=1, max=1, message="Title must be fewer than n characters")
	private String title;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date start;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date end;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date rsvp;
	
	private Student host;
	
	@NotNull(message="Location is mandatory")
	private String location;
	
	private String description;
	
	private double cost;
	
	private int capacity;
	
	private String status;
	
	@Column
	private List<Student> participants;

	public Activity() {
	}

	public Activity(int id, String title, Date start, Date end, Student host, String location,
			String description, double cost, int capacity) {
		this.id = id;
		this.title = title;
		this.start = start;
		this.end = end;
		this.host = host;
		this.location = location;
		this.description = description;
		this.cost = cost;
		this.capacity = capacity;
		this.status = "Open";
	}

	public boolean matches(String status) {
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

	public List<Student> getParticipants() {
		return participants;
	}

	public void setParticipants(List<Student> participants) {
		this.participants = participants;
	}

	public int getId() {
		return id;
	}

	public Student getHost() {
		return host;
	}

	public void setHost(Student host) {
		this.host = host;
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

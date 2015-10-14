package com.saos.web.controllers;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 * XMLService deals with XML file marshaling and unmarshaling.
 */
public class XMLService implements Serializable {
	private static final long serialVersionUID = 1L;
	private String studentsFilePath;
	private String activitiesFilePath;

	/** creates new blank XML service */
	public XMLService() {
	}

	/** creates new XML service */
	public XMLService(String studentsFilePath, String activitiesFilePath) {
		super();
		this.studentsFilePath = studentsFilePath;
		this.activitiesFilePath = activitiesFilePath;
	}

	/** returns user XML file path */
	public String getUsersFilePath() {
		return studentsFilePath;
	}

	/** sets user XML file path */
	public void setUsersFilePath(String usersFilePath) {
		this.studentsFilePath = usersFilePath;
	}

	/** returns vehicle XML file path */
	public String getVehicleFilePath() {
		return activitiesFilePath;
	}

	/** return vehicle XML file path */
	public void setVehiclesFilePath(String vehiclesFilePath) {
		this.activitiesFilePath = vehiclesFilePath;
	}

	/** unmarshals users from user XML */
	public Students unmarshallStudents() throws JAXBException, IOException {
		Students students = null;
		JAXBContext jc = JAXBContext.newInstance(Students.class);
		Unmarshaller u = jc.createUnmarshaller();
		FileInputStream fin = new FileInputStream(studentsFilePath);
		students = (Students) u.unmarshal(fin);
		fin.close();
		return students;
	}

	/** unmarshals vehicles from vehicle XML */
	public Activities unmarshallActivites() throws JAXBException, IOException {
		Activities activities = null;
		JAXBContext jc = JAXBContext.newInstance(Activities.class);
		Unmarshaller u = jc.createUnmarshaller();
		FileInputStream fin = new FileInputStream(activitiesFilePath);
		activities = (Activities) u.unmarshal(fin);
		fin.close();
		return activities;
	}

	/** marshals users to user XML */
	public void marshallStudents(Students students) throws JAXBException, FileNotFoundException {
		JAXBContext jc = JAXBContext.newInstance(Students.class);
		Marshaller m = jc.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal(students, new FileOutputStream("students.xml"));
	}

	/** marshals vehicles to vehicle XML */
	public void marshallVehicles(Activities activities) throws FileNotFoundException, JAXBException {
		JAXBContext jc = JAXBContext.newInstance(Activities.class);
		Marshaller m = jc.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal(activities, new FileOutputStream("activities.xml"));
	}

}

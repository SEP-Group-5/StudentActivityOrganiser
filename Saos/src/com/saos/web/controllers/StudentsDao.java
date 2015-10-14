package com.saos.web.controllers;

import java.io.IOException;
import java.io.Serializable;

import javax.xml.bind.JAXBException;

public class StudentsDao implements Serializable {

	private static final long serialVersionUID = 1L;
	private XMLService xmlService;
	private Students students;

	public StudentsDao() {
		xmlService = new XMLService();
	}

	public StudentsDao(XMLService xmlService) throws JAXBException, IOException {
		this.xmlService = xmlService;
		students = xmlService.unmarshallStudents();
	}
	
	public Students getStudents() {
		return students;
	}
	
	public Student getStudent(int id, String password) {
		return students.login(id, password);
	}
	
	public int getStudentId(String email) {
		return students.getStudentId(email);
	}
}

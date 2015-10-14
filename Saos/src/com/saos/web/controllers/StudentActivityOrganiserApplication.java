package com.saos.web.controllers;

import java.io.IOException;

import javax.xml.bind.JAXBException;

public class StudentActivityOrganiserApplication {

	private StudentsDao studentsDao;
	private XMLService xmlService;

	public StudentActivityOrganiserApplication() {
		super();
	}

	public StudentActivityOrganiserApplication(String studentsFilePath, String activitiesFilePath) throws JAXBException, IOException {
		super();
		xmlService = new XMLService(studentsFilePath, activitiesFilePath);
		studentsDao = new StudentsDao(xmlService);
	}
	
	public StudentsDao getStudentsDao() {
		return studentsDao;
	}
	
	public void setStudentsDao(StudentsDao studentsDao) {
		this.studentsDao = studentsDao;
	}

	public XMLService getXmlService() {
		return xmlService;
	}
	
	public void setXmlService(XMLService xmlService) {
		this.xmlService = xmlService;
	}
}

package com.saos.web.controllers;

import java.io.Serializable;
import java.util.*;

import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "students")
public class Students implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@XmlElement(name = "student")
	protected LinkedList<Student> students = new LinkedList<Student>();
	private int id = 0;

	public Students()
	{
	}
	
	public void add(String firstName, String lastName, String email, int phoneNumber, String password)
	{
		students.add(new Student(++id, firstName, lastName, email, phoneNumber, password));
	}
	
	public Student login(int id, String password) {
		for (Student student : students) {
			if (student.getId() == id && student.getPassword().equals(password))
				return student;
		}
		return null;
	}
	
	public int getStudentId(String email) {
		for (Student student : students) {
			if (student.getEmail().equals(email))
				return student.getId();
		}
		return 0;
	}
}

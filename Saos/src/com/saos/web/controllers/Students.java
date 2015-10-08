package com.saos.web.controllers;

import java.util.*;

public class Students {
	
	protected LinkedList<Student> students = new LinkedList<Student>();
	private int id = 0;

	public Students()
	{
	}
	
	public void add(String firstName, String lastName, String email, int phoneNumber)
	{
		students.add(new Student(++id, firstName, lastName, email, phoneNumber));
	}
}

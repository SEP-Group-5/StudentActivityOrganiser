<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Activity Submitted</title>
</head>
<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Submitted Activity Information</h1>
		</div>
			
		<div id="submittedActivity">
			<h3>You have successfully submitted an activity application</h3>
			
			
					<%@ page import="java.sql.*"%>
	<%@ page import="java.util.*"%>
	<%@ page import="java.text.*"%>
	<%
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");

		String title = request.getParameter("title");
		String description = request.getParameter("description");
		
		java.util.Date start = formatter.parse(request.getParameter("start"));
		java.sql.Date sqlStart = new java.sql.Date(start.getTime());
		
		java.util.Date end = formatter.parse(request.getParameter("end"));
		java.sql.Date sqlEnd = new java.sql.Date(end.getTime());
		
		java.util.Date rsvp = formatter.parse(request.getParameter("rsvp"));
		java.sql.Date sqlRsvp = new java.sql.Date(rsvp.getTime());
		
		String location = request.getParameter("location");
		Double cost = Double.parseDouble(request.getParameter("cost"));
						 int capacity = Integer.parseInt(request.getParameter("capacity")); 
		int hostId = Integer.parseInt((String)session.getAttribute("user"));
		String status = "OPEN";
		int activityId = 123;

		String query = "insert into activity(activityId, title, description, sqlStart, sqlEnd, sqlRsvp, location, cost, capacity, status, hostId) values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
			PreparedStatement s = conn.prepareStatement(query);
			s.setInt(1,activityId);
			s.setString(2, title);
			s.setString(3, description);
			s.setDate(4, sqlStart);
			s.setDate(5, sqlEnd);
			s.setDate(6, sqlRsvp);
			s.setString(7, location);
			s.setDouble(8, cost);
			s.setInt(9, capacity);
			s.setString(10, status);
			s.setInt(11, hostId);
			s.executeUpdate();

			s.close();
			conn.close();
	%>
	<jsp:forward page="viewActivities.jsp" />
	<%
		} catch (Exception ex) {
			out.println("");
		}
	%>	
			
			<table id="submittedActivityInformationTable"
				class="table table-striped">
				<tr>
					<th class="col-md-4">Title</th>
					<td>${title}</td>
				</tr>
				<tr>
					<th class="col-md-4">Description</th>
					<td>${description}</td>
				</tr>
				<tr>
					<th class="col-md-4">Location</th>
					<td>${location}</td>
				</tr>
				<tr>
					<th class="col-md-4">Start</th>
					<td>${start}</td>
				</tr>
				<tr>
					<th class="col-md-4">End</th>
					<td>${end}</td>
				</tr>
				<tr>
					<th class="col-md-4">RSVP</th>
					<td>${rsvp}</td>
				</tr>
				<tr>
					<th class="col-md-4">Cost</th>
					<td>${cost}</td>
				</tr>
				<tr>
					<th class="col-md-4">Capacity</th>
					<td>${capacity}</td>
				</tr>
			</table>
		</div>
		<a class="btn btn-primary btn-lg" href="manageActivities"
			role="button">Back to Manage My Activities</a>
	</div>
</body>
</html>
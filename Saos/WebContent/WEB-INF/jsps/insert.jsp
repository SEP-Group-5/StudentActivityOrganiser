<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert</title>
</head>
<body>

<%@ page import="java.sql.*"%>
	<%@ page import="java.util.*"%>
	<%@ page import="java.text.*"%>
	<%
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");

		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String rsvp = request.getParameter("rsvp");
		String location = request.getParameter("location");
		String cost = request.getParameter("cost");
		String capacity = request.getParameter("capacity");
		/* 				 Double cost = Double.parseDouble(request.getParameter("cost"));
						 int capacity = Integer.parseInt(request.getParameter("capacity")); */
		String hostId = (String) session.getAttribute("user");
		String status = "OPEN";
		String activityId = "123";

		String query = "insert into activity values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
			PreparedStatement s = conn.prepareStatement(query);
			s.setString(2, title);
			s.setString(3, description);
			s.setString(4, start);
			s.setString(5, end);
			s.setString(6, rsvp);
			s.setString(7, location);
			s.setString(8, cost);
			s.setString(9, capacity);
			s.setString(10, status);
			s.setString(11, hostId);
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

</body>
</html>
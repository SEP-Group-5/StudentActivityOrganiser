<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Upcoming Activities</title>
</head>

<body>
	<jsp:include page="navigationBar.jsp" />
	<%@ page import="java.sql.*"%>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "12340");
			PreparedStatement s2 = conn2.prepareStatement("Select * from activity where hostId = '" + request.getParameter("id") + "'");
			ResultSet r2 = s2.executeQuery();
			while (r2.next()) {
	%>
	<%
		}
			r2.close();
			conn2.close();
			s2.close();
		} catch (Exception ex) {
			out.println("Error with database; check the connection string\n and make sure you have the proper library");
		}
	%>
	<div class="container">
		<div class="page-header">
			<h1>Upcoming activities</h1>
		</div>
		<table id="upcoming-activities" class="table table-hover">
			<thead>
				<tr>
					<th class="col-sm-4">Title</th>
					<th class="col-sm-2">Starting</th>
					<th class="col-sm-2">Ending</th>
					<th class="col-sm-2">Participants</th>
					<th class="col-sm-2">Cost</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="viewSpecificActivity">Lab Coat Day</a></td>
					<td>13:00 26/08/2015</td>
					<td>15:00 26/08/2015</td>
					<td>23</td>
					<td>$10</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
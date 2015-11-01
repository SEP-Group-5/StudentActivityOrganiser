<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Managed My Activities</title>
</head>

<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Registered activities</h1>
		</div>
		<div id="view-registered-activities-content">
			View activities you have registered for<br>
		</div>
		
				<table id="my-registered-activities" class="table table-hover">
			<thead>
				<tr>
					<th class="col-sm-4">Title</th>
					<th class="col-sm-2">Description</th>
					<th class="col-sm-2">Starting</th>
					<th class="col-sm-2">Ending</th>
					<th class="col-sm-2">Status</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				
				<%@ page import="java.sql.*"%>
				 <% 
				 try {
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
					 Statement s2 = conn2.createStatement();
					 ResultSet r2 = s2.executeQuery("Select * from activity,studentactivity where studentId = "+session.getAttribute("user")+" and activity.activityId = studentactivity.activityId;");
					 while(r2.next())
					 {
						String s =  r2.getString(2);
						session.setAttribute("option", r2.getString(2));
					 %>
					 
					<td><a href="viewSpecificActivity?n=<%=r2.getString(2) %>"><%=r2.getString(2) %> </a></td>
					<td><%=r2.getString(3) %></td>
					<td><%=r2.getString(4) %></td>
					<td><%=r2.getString(5) %></td>
					<td><%=r2.getString(10) %></td>
				</tr>
					 <%
					 }
					 r2.close();
					 conn2.close();
				 	 s2.close();
				 } catch (Exception ex)
				{
					 out.println("Error with database; check the connection string\n and make sure you have the proper library");
				}
				 
            %>
			</tbody>
		</table>
	</div>
</body>
</html>
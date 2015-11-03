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
	<div class="container">
		<div class="page-header">
						<h1>Upcoming activities</h1>		
		</div>
		<div id="manage-activities-content">
			View all upcoming activities<br>
			<a href="addActivity"><button id="create-activity-button"
					type="button" class="btn btn-info">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					Create new activity
				</button></a>
		</div>
	
		<table id="my-activities" class="table table-hover">
			<thead>
				<tr>
					<th class="col-sm-4">Title</th>
					<th class="col-sm-2">Starting</th>
					<th class="col-sm-2">Ending</th>
					<th class="col-sm-2">Capacity</th>
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
					 ResultSet r2 = s2.executeQuery("Select * from activity;");
					 while(r2.next())
					 {
						 String s =  r2.getString(2);
					     session.setAttribute("option", r2.getString(2));
					 %>
					<td><a href="viewSpecificActivity?n=<%=r2.getString(2) %>"><%=r2.getString(2) %> </a></td>
					<td><%=r2.getString(4) %></td>
					<td><%=r2.getString(5) %></td>
					<td><%=r2.getString(9) %></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Viewing specific Activity</title>
</head>
<form method="post">

<body>
<script language="javascript">
function openPopup()
{
  $('#divId').css('display','block');
$('#divId').dialog();
}
</script>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Activity Information</h1>
		</div>
		<div id="viewSpecificActivity">
			<h3>Details of the activity</h3>
			
			
			
			<table id="activityInformationTable"
				class="table table-striped">
							
				<%@ page import="java.sql.*"%>
				 <% 
				 String actID = null;
				 try {
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
					 Statement s2 = conn2.createStatement();
					 ResultSet r2 = s2.executeQuery("Select * from activity where activity.title = \"" + request.getParameter("n") + "\"");
					
					 while(r2.next())
					 {
						 actID = r2.getString(1);
					 %>
				<tr>
					<th class="col-md-4">Title</th>
					<td>${title}</td>
					<td><%=r2.getString(2) %> </td>
				</tr>
				<tr>
					<th class="col-md-4">Description</th>
					<td>${description}</td>	
					<td><%=r2.getString(3) %></td>
				</tr>
				<tr>
					<th class="col-md-4">Location</th>
					<td>${location}</td>
					<td><%=r2.getString(7) %></td>
				</tr>
				<tr>
					<th class="col-md-4">Start</th>
					<td>${start}</td>
					<td><%=r2.getString(4) %></td>
				</tr>
				<tr>
					<th class="col-md-4">End</th>
					<td>${end}</td>
					<td><%=r2.getString(5) %></td>
				</tr>
				<tr>
					<th class="col-md-4">RSVP</th>
					<td>${rsvp}</td>
					<td><%=r2.getString(6) %></td>
				</tr>
				<tr>
					<th class="col-md-4">Cost</th>
					<td>${cost}</td>
					<td><%=r2.getString(8) %></td>
				</tr>
				<tr>
					<th class="col-md-4">Capacity</th>
					<td>${capacity}</td>
					<td><%=r2.getString(9) %></td>
				</tr>
								<tr>
					<th class="col-md-4">Status</th>
					<td>${status}</td>
					<td><%=r2.getString(10) %></td>
				</tr>
				<tr>
					<th class="col-md-4">Host</th>
					<td>${organiser}</td>
					<td><%=r2.getString(11) %></td>
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
				 
			</table>
				
		<input type="submit" class="btn btn-primary btn-lg" value="Register" name="add"/>
		
		<input type="submit" class="btn btn-primary btn-lg" value="Back to all activities" name="back"/>
		
			<%
				 if(request.getParameter("add") != null)
					{
					
					try{
						
						 String query =  "INSERT INTO `studentactivity` (`studentid`, `activityid`) VALUES ('"+
								 Integer.parseInt(session.getAttribute("user").toString().toString()) +"', '"+ actID +"')";
								 Class.forName("com.mysql.jdbc.Driver");
								 Connection conn = null;
								 conn =  DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
								 PreparedStatement s0 = conn.prepareStatement(query);
								 s0.executeUpdate(query);
								 %><jsp:forward page="viewRegisteredActivities.jsp" /><%
										 } catch (Exception ex)
											{
											 
												 out.println("Error = " + ex.getMessage());
											}
					}
			
			 if(request.getParameter("back") != null)
			 {
				 %><jsp:forward page="viewActivities.jsp" /><%

			 }
			
            %> 
			
			<h3>Currently registered users</h3>
			<table id="activityRegisteredUsersTable" class="table table-hover">
			<thead>
			
				<tr>
					<th class="col-sm-3">First name</th>
								
					<th class="col-sm-3">Last name</th>
								
					<th class="col-sm-3">Email</th>
								
					<th class="col-sm-3">Phone</th>
				</tr>
			</thead>
			<tbody>
			
			<%@ page import="java.sql.*"%>
				 <% 
				 try {
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
					 Statement s2 = conn2.createStatement();
					 ResultSet r2 = s2.executeQuery("Select firstName,lastName,email,phoneNumber from activity,studentactivity,student where student.studentId=studentactivity.studentId and studentactivity.activityId = activity.activityId and activity.title = \"" + request.getParameter("n") + "\"");
					 while(r2.next())
					 {
					 %>
			
			
				<tr>
					<td><%=r2.getString(1) %></td>
					<td><%=r2.getString(2) %></td>
					<td><%=r2.getString(3) %></td>
					<td><%=r2.getString(4) %></td>
				</tr>
			</tbody>
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
			</table>
		</div>
		
	</div>
</body>
</html>
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
			<h1>Manage My Activities</h1>
		</div>
		<div id="manage-activities-content">
			Manage activities you have created <br>
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
					 ResultSet r2 = s2.executeQuery("Select * from activity where hostID = " + session.getAttribute("user"));
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
		
		<br>
		<form id="create" method ="POST">
		<table>
			<tr>
				<td>
					Title:
				</td>
				<td>
						<input type="text" name="titlet"/>
				</td>
			</tr>
			<tr>
				<td>
					Desciption:
				</td>
				<td>
					<input type="text" name="desciptiont"/>
				</td>
			</tr>
			<tr>
				<td>
					Start:
				</td>
				<td>
					<input type="text" name="startt"/>
				</td>
			</tr>
			<tr>
				<td>
					End:
				</td>
				<td>
					<input type="text" name="endt"/>
				</td>
			</tr>
			<tr>
				<td>
					RSVP:
				</td>
				<td>
					<input type="text" name="rsvpt"/>
				</td>
			</tr>
				<tr>
				<td>
					Location
				</td>
				<td>
					<input type="text" name="locationt"/>
				</td>
			</tr>
			<tr>
				<td>
					Cost:
				</td>
				<td>
					<input type="text" name="costt"/>
				</td>
			</tr>
			<tr>
				<td>
					Capacity:
				</td>
				<td>
					<input type="text" name="capacityt"/>
				</td>
			</tr>
			<tr>
				<td>
					Status:
				</td>
				<td>
					<input type="text" name="statust"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="add" name="add"/>
					
				</td>
			</tr>
		</table>
		</form>
		<%@ page import="java.sql.*"%>
				<%
		if(request.getParameter("add") != null)
		{
		String query = "";
		java.util.Date fDate = new java.util.Date();
		java.text.SimpleDateFormat formattedDate = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.sql.Date sqlstart = null;
			java.sql.Date sqlend = null;
			java.sql.Date sqlrsvp = null;
			
			try{
				
				java.util.Date start = formattedDate.parse(request.getParameter("startt"));
				sqlstart = new java.sql.Date(start.getTime());		
				
				java.util.Date end = formattedDate.parse(request.getParameter("endt"));
				sqlend = new java.sql.Date(end.getTime());		

				java.util.Date rsvp = formattedDate.parse(request.getParameter("rsvpt"));
				sqlrsvp = new java.sql.Date(rsvp.getTime());


			}catch (Exception ex)
			{

				out.print("nope\n");
			}
				
			try{
				
				 query =  "INSERT INTO `activity` (`title`, `description`, `start`, `end`, `rsvp`, `location`, `cost`, `capacity`, `status`, `hostId`) VALUES ('"+
						request.getParameter("titlet") +"', '"+ request.getParameter("desciptiont") +"', '" + formattedDate.format(sqlstart)
								  +"', '"+ formattedDate.format(sqlend) +"', '" +  formattedDate.format(sqlrsvp) +"', '"+ 
										request.getParameter("locationt") +"', '"+ request.getParameter("costt") +"', '"+ Integer.parseInt(request.getParameter("capacityt").trim()) +"', '"+ 
												request.getParameter("statust") +"', '"+ Integer.parseInt(session.getAttribute("user").toString()) +"')";
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection conn = null;
						 conn =  DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
						 PreparedStatement s0 = conn.prepareStatement(query);
						 s0.executeUpdate(query);
									 
								 } catch (Exception ex)
									{
									 
										 out.println("Error = " + ex.getMessage());
									} 
		}
		%>
	</div>
</body>
</html>
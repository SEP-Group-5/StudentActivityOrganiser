<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Create new activity</title>
</head>

<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Create new activity</h1>
		</div>

		<div id="new-activity">
	<form id="create" method ="POST" class="form-horizontal">
		<table>
			<tr>
				<td>
					Title:
				</td>
				<td>
						<input type="text" name="titlet" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					Desciption:
				</td>
				<td>
					<input type="text" name="desciptiont" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					Start:
				</td>
				<td>
					<input type="text" name="startt" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					End:
				</td>
				<td>
					<input type="text" name="endt" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					RSVP:
				</td>
				<td>
					<input type="text" name="rsvpt" class="form-control"/>
				</td>
			</tr>
				<tr>
				<td>
					Location
				</td>
				<td>
					<input type="text" name="locationt" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					Cost:
				</td>
				<td>
					<input type="text" name="costt" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					Capacity:
				</td>
				<td>
					<input type="text" name="capacityt" class="form-control"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="add" name="add" class="form-control"/>
					
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
										request.getParameter("locationt") +"', '"+ request.getParameter("costt") +"', '"+ Integer.parseInt(request.getParameter("capacityt").trim()) +"', 'OPEN' ,'"+ Integer.parseInt(session.getAttribute("user").toString()) +"')";
						 Class.forName("com.mysql.jdbc.Driver");
						 Connection conn = null;
						 conn =  DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "password");
						 PreparedStatement s0 = conn.prepareStatement(query);
						 s0.executeUpdate(query);
						 %>
						 <jsp:forward page="viewActivities.jsp" />
						 <% 
									 
								 } catch (Exception ex)
									{
									 
										 out.println("Error = " + ex.getMessage());
									} 
		}
		%>
			
		</div>
	</div>

</body>
</html>
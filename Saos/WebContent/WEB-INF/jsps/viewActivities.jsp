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
		<div id="upcoming-activities">Upcoming activities here.</div>
	</div>
<%@ page import="java.sql.*"%>
				 <% 
				 try {
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "12340");
					 PreparedStatement s2 = conn2.prepareStatement("Select * from activity where hostId = '" + request.getParameter("id") +"'");
					 ResultSet r2 = s2.executeQuery();
					 while(r2.next())
					 {%>
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
</body>
</html>
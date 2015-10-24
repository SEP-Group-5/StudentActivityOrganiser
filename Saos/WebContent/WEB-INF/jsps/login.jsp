<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap.css" />">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>

<title>UTS:SAOS - Login</title>
</head>

<body>
	<div class="jumbotron">
		<div class="container">
			<h1>UTS: SAOS</h1>
			<p>Welcome to the UTS Student Activity Organiser System</p>
		</div>
	</div>

	
	<div id="content" class="col-md-4 col-md-offset-4">
		<form id="login-form" class="well col-md-8 col-md-offset-2">
			<legend>Login into UTS:SAOS</legend>
			<div class="form-group">
				<label>Student ID</label> <input class="form-control" type="text"
					name="id">
			</div>
			<div class="form-group">
				<label>Password</label> <input class="form-control" type="password" name="password">
			</div>
			<button type="submit"
				class="btn btn-primary btn-lg btn-block btn-success">LOGIN</button>	
			</div>

<%@ page import="java.sql.*"%>
				 <% 
				 try {
					 Class.forName("com.mysql.jdbc.Driver");
					 out.println("Driver working! \n");
					 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "12340");
					 out.println("connected to database! \n");
					 PreparedStatement s = conn.prepareStatement("Select * from student where studentId = '" + request.getParameter("id")
					 + "' and password = '" + request.getParameter("password") +"'");
					 out.println("Fields can be checked! \n");
					 ResultSet r = s.executeQuery();
					 if(r.next())
					 {
						 r.close();
						 conn.close();
						 s.close();
						 session.setAttribute("user", request.getParameter("id"));
					 %>
					 <jsp:forward page="viewActivities.jsp" />
					 <%	 
					 }
				 } catch (Exception ex)
					{
						 out.println("Error");
					}
					 
				
            %>

		</form>
	</div>
</body>
</html>
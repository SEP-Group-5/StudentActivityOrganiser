<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.saos.web.controllers.*"%>
<!-- Action to log user into the system. If user could not be found, error is displayed-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:useBean id="student" class="com.saos.web.controllers.Student"
		scope="session" />
	<%
		StudentActivityOrganiserApplication saos = (StudentActivityOrganiserApplication) session.getAttribute("saos");

		student.setId(Integer.parseInt(request.getParameter("id")));
		student.setPassword(request.getParameter("password"));

		Student studentLoggingIn = saos.getStudentsDao().getStudent(student.getId(), student.getPassword());

		if (studentLoggingIn != null) {
			student.setId(studentLoggingIn.getId());
			student.setFirstName(studentLoggingIn.getFirstName());
			student.setLastName(studentLoggingIn.getLastName());
			student.setPhoneNumber(studentLoggingIn.getPhoneNumber());

			response.sendRedirect("viewActivities");

		} else {
			student.setId(0);
			student.setPassword(null);
	%>

	<div class="container" style="margin-top: 75px;">
		<div class="row vertical-center-row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">Login Failed</h3>
					</div>
					<div class="panel-body">Failed to login. Please try again.</div>
					<div class="panel-footer text-center">
						<a href="${pageContext.request.contextPath}" class="btn btn-warning">Return to home
							page</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>
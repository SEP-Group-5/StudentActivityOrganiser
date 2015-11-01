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
<script language="javascript">
function createActivity(){
	System.out.println("heud")
	try {
					 Class.forName("com.mysql.jdbc.Driver");
					 Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/saos", "root", "12340");
					 Statement statement = (Statement) con.createStatement();
					 String insert = "INSERT INTO activity(title,description,start,end,rsvp,location,cost,capacity,status,hostID)	VALUES (title.value, description.value, start.value, end.value, rsvp.value, location.value, cost.value, capacity.value, 'Open', session.getAttribute(user))";
					 statement.executeUpdate(insert);

				 } catch (Exception)
				{
					 out.println("Error with database; check the connection string\n and make sure you have the proper library");
				}
	}
</script>
	<jsp:include page="navigationBar.jsp" />
	<%@ page import="java.sql.*"%>
	
	<div class="container">
		<div class="page-header">
			<h1>Create new activity</h1>
		</div>

		<div id="new-activity">
			<form:form method="POST" modelAttribute="activity"
				class="form-horizontal">

				<div class="modal-body">

					<div class="form-group">
						<label for="title" class="control-label col-md-1">Title:</label>
						<div class="col-md-11">
							<form:input type="text" path="title" id="title"
								class="form-control input-sm" />
						</div>
					</div>

					<div class="form-group">
						<label for="description" class="control-label col-md-1">Description:</label>
						<div class="col-md-11">
							<form:input type="text" path="description" id="description"
								class="form-control input-sm" />
						</div>
					</div>

					<div class="form-group">
						<label for="location" class="control-label col-md-1">Location:</label>
						<div class="col-md-11">
							<form:input type="text" path="location" id="location"
								class="form-control input-sm" />
						</div>
					</div>

					<div class="form-group">
						<label for="start" class="control-label col-md-1">Start:</label>
						<div class="col-md-3">
							<form:input type="text" path="start" id="start"
								class="form-control input-sm datetimepicker" />
						</div>
						<label for="end" class="control-label col-md-1">End:</label>
						<div class="col-md-3">
							<form:input type="text" path="end" id="end"
								class="form-control input-sm datetimepicker" />
						</div>
						<label for="rsvp" class="control-label col-md-1">RSVP:</label>
						<div class="col-md-3">
							<form:input type="text" path="rsvp" id="rsvp"
								class="form-control input-sm datetimepicker" />
						</div>
					</div>

					<div class="form-group">
						<label for="cost" class="control-label col-md-1">Cost:</label>
						<div class="col-md-3">
							<div class=" input-group">
								<span class="input-group-addon">$</span>
								<form:input type="text" path="cost" id="cost"
									class="form-control input-sm" />
							</div>
						</div>
						<label for="capacity" class="control-label col-md-1">Capacity:</label>
						<div class="col-md-3">
							<form:input type="text" path="capacity" id="capacity"
								class="form-control input-sm" />
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<div class="form-actions floatRight">
						<a href="manageActivities"><button type="button"
								class="btn btn-default">Cancel</button></a> 
							<input type="button" value="Submit"
							onClick="createActivity()" class="btn btn-default btn-success" >
					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>
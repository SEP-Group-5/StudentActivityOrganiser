<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Activity Submitted</title>
</head>
<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Submitted Activity Information</h1>
		</div>
			
		<div id="submittedActivity">
			<h3>You have successfully submitted an activity application</h3>
			
			
			<table id="submittedActivityInformationTable"
				class="table table-striped">
				<tr>
					<th class="col-md-4">Title</th>
					<td>${title}</td>
				</tr>
				<tr>
					<th class="col-md-4">Description</th>
					<td>${description}</td>
				</tr>
				<tr>
					<th class="col-md-4">Location</th>
					<td>${location}</td>
				</tr>
				<tr>
					<th class="col-md-4">Start</th>
					<td>${start}</td>
				</tr>
				<tr>
					<th class="col-md-4">End</th>
					<td>${end}</td>
				</tr>
				<tr>
					<th class="col-md-4">RSVP</th>
					<td>${rsvp}</td>
				</tr>
				<tr>
					<th class="col-md-4">Cost</th>
					<td>${cost}</td>
				</tr>
				<tr>
					<th class="col-md-4">Capacity</th>
					<td>${capacity}</td>
				</tr>
			</table>
		</div>
		<a class="btn btn-primary btn-lg" href="manageActivities"
			role="button">Back to Manage My Activities</a>
	</div>
</body>
</html>
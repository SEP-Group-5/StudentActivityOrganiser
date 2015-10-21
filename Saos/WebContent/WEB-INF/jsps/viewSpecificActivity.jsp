<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS - Viewing specific Activity</title>
</head>
<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Activity Information - Lab Coat Day</h1>
		</div>
		<div id="viewSpecificActivity">
			<h3>Details of the activity</h3>
			<table id="activityInformationTable"
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
				<tr>
					<th class="col-md-4">Host</th>
					<td>${organiser}</td>
				</tr>
			</table>
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
				<tr>
					<td>${firstName}</td>
					<td>${lastName}</td>
					<td>${email}</td>
					<td>${phone}</td>
				</tr>
			</tbody>
			</table>
		</div>
		<a class="btn btn-primary btn-lg" href="viewActivities"
			role="button">Back to all activities</a>
	</div>
</body>
</html>
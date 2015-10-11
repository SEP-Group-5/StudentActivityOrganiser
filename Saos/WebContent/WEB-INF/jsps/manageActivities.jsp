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
			<a href="createActivity"><button id="create-activity-button"
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
					<th class="col-sm-2">Participants</th>
					<th class="col-sm-2">Status</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="activityIdPlaceholderLink">Lab Coat Day</a></td>
					<td>13:00 26/08/2015</td>
					<td>15:00 26/08/2015</td>
					<td>23</td>
					<td>Approved</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
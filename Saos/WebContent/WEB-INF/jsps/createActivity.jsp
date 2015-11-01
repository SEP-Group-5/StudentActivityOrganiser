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
			<form method="POST" action="submittedActivity.jsp"
				class="form-horizontal">

				<div class="modal-body">

					<div class="form-group">
						<label for="title" class="control-label col-md-1">Title:</label>
						<div class="col-md-11">
							<input type="text" name="title"
								class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label for="description" class="control-label col-md-1">Description:</label>
						<div class="col-md-11">
							<input type="text" name="description"
								class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label for="location" class="control-label col-md-1">Location:</label>
						<div class="col-md-11">
							<input type="text" name="location"
								class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label for="start" class="control-label col-md-1">Start:</label>
						<div class="col-md-3">
							<input type="date" name="start"
								class="form-control datetimepicker" />
						</div>
						<label for="end" class="control-label col-md-1">End:</label>
						<div class="col-md-3">
							<input type="date" name="end"
								class="form-control datetimepicker" />
						</div>
						<label for="rsvp" class="control-label col-md-1">RSVP:</label>
						<div class="col-md-3">
							<input type="date" name="rsvp"
								class="form-control datetimepicker" />
						</div>
					</div>

					<div class="form-group">
						<label for="cost" class="control-label col-md-1">Cost:</label>
						<div class="col-md-3">
							<div class=" input-group">
								<span class="input-group-addon">$</span>
								<input type="text" name="cost"
									class="form-control" />
							</div>
						</div>
						<label for="capacity" class="control-label col-md-1">Capacity:</label>
						<div class="col-md-3">
							<input type="text" name="capacity"
								class="form-control" />
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<div class="form-actions floatRight">
						<a href="manageActivities"><button type="button"
							class="btn btn-default">Cancel</button></a> 
							<input type="submit"
							value="Submit" class="btn btn-default btn-success">
					 
							
				</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
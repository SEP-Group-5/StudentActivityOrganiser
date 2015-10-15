<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		$("#end").datepicker();
	});
</script>

<title>UTS:SAOS</title>
</head>

<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Create new activity</h1>
		</div>

		<div id="new-activity">
			<form:form method="POST" modelAttribute="activity"
				class="form-horizontal">

				<div class="modal-body">

					<div class="form-group">
						<label for="title" class="control-label col-lg-1">Title:</label>
						<div class="col-lg-11">
							<form:input type="text" path="title" id="title"
								class="form-control input-sm" /><br/>
								<form:errors path="title"></form:errors>
						</div>
					</div>

					<div class="form-group">
						<label for="description" class="control-label col-lg-1">Description:</label>
						<div class="col-lg-11">
							<form:input type="text" path="description" id="description"
								class="form-control input-sm" />
							<!-- 						 <textarea class="form-control" id="description" rows="3"></textarea> -->
						</div>
					</div>

					<div class="form-group">
						<label for="location" class="control-label col-lg-1">Location:</label>
						<div class="col-lg-11">
							<form:input type="text" path="location" id="location"
								class="form-control input-sm" />
						</div>
					</div>

					<div class="form-group">
						<label for="start" class="control-label col-lg-1">Start:</label>
						<div class="col-lg-3">
							<form:input type="text" path="start" id="start"
								class="form-control input-sm" />
						</div>
						<label for="end" class="control-label col-lg-1">End:</label>
						<div class="col-lg-3">
							<form:input type="text" path="end" id="end"
								class="form-control input-sm" />
						</div>
						<label for="rsvp" class="control-label col-lg-1">RSVP:</label>
						<div class="col-lg-3">
							<form:input type="text" path="rsvp" id="rsvp"
								class="form-control input-sm" />
						</div>
					</div>

					<div class="form-group">
						<label for="cost" class="control-label col-lg-1">Cost:</label>
						<div class="col-lg-3">
							<div class=" input-group">
								<span class="input-group-addon">$</span>
								<form:input type="text" path="cost" id="cost"
									class="form-control input-sm" />
							</div>
						</div>
						<label for="capacity" class="control-label col-lg-1">Capacity:</label>
						<div class="col-lg-3">
							<form:input type="text" path="capacity" id="capacity"
								class="form-control input-sm" />
						</div>
					</div>

				</div>

				<div class="modal-footer">
					<!-- 					<button type="button" class="btn btn-default">Cancel</button> -->
					<!-- 					<button type="submit" class="btn btn-default btn-success">Submit</button> -->
					<div class="form-actions floatRight">
						<input type="submit" value="Submit" class="btn btn-primary btn-sm">
					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>
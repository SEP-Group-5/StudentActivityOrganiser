<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS:SAOS</title>
</head>
<body>
	<jsp:include page="navigationBar.jsp" />
	<div class="container">
		<div class="page-header">
			<h1>Create new activity</h1>
		</div>
		<div id="new-activity">
			<form class="form-horizontal" role="form">
				<div class="modal-body">
					<div class="form-group">
						<label for="title" class="control-label col-lg-1">Title:</label>
						<div class="col-lg-11">
							<input type="text" class="form-control" id="title">
						</div>
					</div>
					<div class="form-group">
						<label for="description" class="control-label col-lg-1">Description:</label>
						<div class="col-lg-11">
							<textarea class="form-control" id="description" rows="3"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="location" class="control-label col-lg-1">Location:</label>
						<div class="col-lg-11">
							<input type="text" class="form-control" id="location">
						</div>
					</div>
					<div class="form-group">
						<label for="start" class="control-label col-lg-1">Start:</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="start">
						</div>
						<label for="end" class="control-label col-lg-1">End:</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="end">
						</div>
						<label for="rsvp" class="control-label col-lg-1">RSVP:</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="rsvp">
						</div>
					</div>
					<div class="form-group">
						<label for="cost" class="control-label col-lg-1">Cost:</label>
						<div class="col-lg-3">
							<div class=" input-group">
								<span class="input-group-addon">$</span><input type="text"
									class="form-control" id="cost">
							</div>
						</div>
						<label for="capacity" class="control-label col-lg-1">Capacity:</label>
						<div class="col-lg-3">
							<input type="text" class="form-control" id="capacity">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default">Cancel</button>
					<button type="submit" class="btn btn-default btn-success">Submit</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
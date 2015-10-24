<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script
	src="<c:url value="/resources/bootstrap-datetimepicker/js/moment.js"/>"></script>
<script
	src="<c:url value="/resources/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"/>"></script>

<script>
	$(function() {
		$('.datetimepicker').datetimepicker({
			format : 'h:mmA Do MMM YYYY'
		});
	});
</script>



</head>
<nav class="navbar navbar-default">
<div class="container">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="viewActivities">UTS:SAOS</a>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li id="viewActivities" class="dropdown"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false">Upcoming Activities <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li><a href="viewActivities">All upcoming activities</a></li>
					<li><a href="viewRegisteredActivities">Registered upcoming
							activities</a></li>
				</ul></li>
			<li><a href="manageActivities">Manage My Activities</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li id="logged-in-user" class="dropdown"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false">Signed in as <%=session.getAttribute("user")%>
					+ <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li><a href="/Saos/">Logout</a></li>
				</ul></li>
		</ul>
	</div>
</div>
</nav>
</html>
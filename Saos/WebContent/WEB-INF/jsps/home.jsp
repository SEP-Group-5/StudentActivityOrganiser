<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
 
 <!--  NOTE: This jsp only for testing purpose, not part of the solution -->    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testing</title>
</head>
<body>

<h2>Submitted Activity Information</h2>
   <table>
    <tr>
        <td>Title</td>
        <td>${title}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${description}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>${location}</td>
    </tr>
        <tr>
        <td>Location</td>
        <td>${location}</td>
    </tr>
        <tr>
        <td>Start</td>
        <td>${start}</td>
    </tr>
        <tr>
        <td>End</td>
        <td>${end}</td>
    </tr>
        <tr>
        <td>Cost</td>
        <td>${cost}</td>
    </tr>
        <tr>
        <td>Capacity</td>
        <td>${capacity}</td>
    </tr>
</table>  

Hi there!
Session: <%= session.getAttribute("name") %> <p/>

Request: <%= request.getAttribute("name") %> <p/>

<a href="createActivity">Create an activity</a>
</body>
</html>
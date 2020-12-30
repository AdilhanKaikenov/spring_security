<%@ taglib prefix="spring" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info for Employees</title>
</head>
<body>

<h3>Information for all Employees</h3>
<br><br>

<spring:authorize access="hasRole('HR')">
    <input type="button" value="Salary" onclick="window.location.href = 'hr-info'">
    Only for HR staff
</spring:authorize>
<br><br>

<spring:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance" onclick="window.location.href = 'manager-info'">
    Only for Managers
</spring:authorize>
<br><br>

<a href="<c:url value="/logout" />">Logout</a>
</body>
</html>

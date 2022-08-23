<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Home</title>
<%@include file="../components/allcss.jsp" %>
<style type="text/css">
.paint-card{
box-shadow:0 0 20px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>

<c:if test="${empty doctorObj}">
 <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
 <%@include file="navbar.jsp" %>
 

<h1>Doctor dashboard</h1>


</body>
</html>
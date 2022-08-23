<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-truck-medical"></i> Apollo Hospital</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj}">
					<li class="nav-item"><a class="nav-link"
						href="admin_login.jsp"><i class="fa-solid fa-lock"></i> ADMIN</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						href="doctor_login.jsp">DOCTOR</a></li>
					<li class="nav-item"><a class="nav-link"
						href="appointment.jsp">APOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link" href="user_login.jsp">USER</a>
					</li>

				</c:if>


				<c:if test="${not empty userObj}">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="appointment.jsp">APOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">VIEW APOINTMENT</a></li>

					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							${userObj.fullName }</a>

						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Change Password</a></li>
							<li><a class="dropdown-item" href="userlogout">Logout</a></li>

						</ul></li>
				</c:if>

			</ul>

		</div>
	</div>
</nav>
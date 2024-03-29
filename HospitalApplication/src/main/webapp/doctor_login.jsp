<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp"%>
<meta charset="ISO-8859-1">
<title>Doctor page</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						
						<p class="fs-4 text-center">Doctor Login</p>
						
						<c:if test="${not empty sucMsg}">

							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">

							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input required
									name="email" type="email" class="form-control">

							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="passsword" type="password" class="form-control">

							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>



						</form>
					</div>

				</div>
</body>
</html>
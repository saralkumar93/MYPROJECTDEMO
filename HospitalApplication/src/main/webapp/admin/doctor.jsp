<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnection"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="../components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.3);
}
</style>
<meta charset="ISO-8859-1">
<title>Doctor page</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card-paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>

						<c:if test="${not empty errorMsg}">

							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<c:if test="${not empty sucMsg}">
							<div class="text-center text-success fs-3" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						
						<form action="../addDoctor" method="post">
						       <div class="mb-3">
						        <label class="form-label">Full Name</label><input type="text"
						         required name="fullname" class="form-control">
						       
						       </div>	
						       
						        <div class="mb-3">
						        <label class="form-label">DOB</label><input type="date"
						         required name="dob" class="form-control">
						       
						       </div>	
						       
						        <div class="mb-3">
						        <label class="form-label">Qualification</label><input type="text"
						         required name="qualification" class="form-control">
						       
						       </div>	
						 	
						       
						        <div class="mb-3">
						        <label>Specialist</label>
						        <select class="form-control" name="spec">

						        
						         <option value="-1">--Select Specialist--</option>
						                 
						        <%
						        try{
						        	String sql="select * from specialist";
						        	Class.forName("com.mysql.jdbc.Driver").newInstance();
						        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalApp","root","root");
						        	Statement stm = conn.createStatement();
						        	ResultSet rs = stm.executeQuery(sql);
						        	while(rs.next())
						        	{
						        		%>
						        		<option > <%=rs.getString("spec_name") %></option>
						        		<% 
						        	}
						        	
						        	
						        }catch(Exception e)
						        {
						        	e.printStackTrace();
						        	out.println("error" +e.getMessage());
						        	
						
						        }
						        
						        
						        
						        %>						     					        
						       
						      
						       </select>
						       </div>	
						       
						       <div class="mb-3">
						        <label class="form-label">Email</label><input type="text"
						         required name="email" class="form-control">
						       
						       </div>	
						       <div class="mb-3">
						        <label class="form-label">Mob No</label><input type="text"
						         required name="mobno" class="form-control">
						       
						       </div>
						       <div class="mb-3">
						        <label class="form-label">password</label><input type="password"
						         required name="password" class="form-control">
						       
						       </div>
						       
						       <button type="submit" class="btn btn-primary">Submit</button>							
						
						
						
						</form>

					</div>


				</div>

			</div>

<div class="col-md-8">
 <div class="card paint-card">
   <div class="card-body">
    <p class="fs-3 text-center">Doctor Details</p>
    <table class="table">
    <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">DOB</th>
      <th scope="col">Qualification</th>
      <th scope="col">Specialist</th>
      <th scope="col">Email</th>
      <th scope="col">Mob no</th>
      <th scope="col">Action</th>
      
    </tr>
</thead>
<tbody>    
    <%
    DoctorDao dao2 = new DoctorDao(DBConnection.getConn());
    List<Doctor> list2= dao2.getAllDoctor();
    for(Doctor d:list2)
    {%>
    <tr>
    <td><%=d.getFullName() %></td>
    <td><%=d.getDob() %></td>
    <td><%=d.getQualification() %></td>
    <td><%=d.getSpecialist() %></td>
    <td><%=d.getEmail() %></td>
    <td><%=d.getMobNo() %></td>
    
    <td>
    <a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
    <a href="#" class="btn btn-sm btn-danger">Delete</a>
    
    
    </td>
    </tr>
    	
   <%}
    
    
    
    
    %>
    
    
    </tbody>
    </table>
   </div>
   
 </div>

</div>


		</div>


	</div>



</body>
</html>
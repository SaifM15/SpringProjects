<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container p-2">
		<!-- 		<div class="row p-20"> -->
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa-sharp fa-solid fa-user-group fa-xl"></i>
						<h5>Add Jobs</h5>
					</div>
					<c:if test="${not empty succMsg }">
						<div class="alert alert-success" role="alert">${succMsg}</div>
						<c:remove var="succMsg" />
					</c:if>



					<form action="addjob" method="post">
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label> Location</label> <select name="location"
									class="custom-select " id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Odisha">Odisha</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujrat">Gujrat</option>
									<option value="Delhi">Delhi</option>
									<option value="Chennai">Chennai</option>
									<option value="Kashmir">Kashmir</option>
									<option value="UttarPradesh">UttarPradesh</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Banglore">Banglore</option>

								</select>
							</div>
							<div class="form-group col-md-4">
								<label> Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Data Entry">Data Entry</option>
									<option value="Mechanical">Mechanical</option>
									<option value="Civil">Civil</option>
									<option value="Electrician">Electrician</option>

								</select>
							</div>
							<div class="form-group col-md-4">
								<label> Status</label> <select class="form-control"
									name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label> Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>

						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
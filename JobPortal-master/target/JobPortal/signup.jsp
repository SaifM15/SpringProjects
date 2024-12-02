<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
	<%@include file="all_component/Navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-solid fa-user-plus" aria-hidden="true"></i>
							<h5>Registration Page</h5>
						</div>
								<c:if test="${not empty succMsg }">
								<h4 class="text-center text-success">${succMsg}</h4>
								<c:remove var="succMsg" />
								</c:if>

						<form action="adduser" method="post">

							<div class="form-group">
								<label>Enter Full Name</label><input type="text"
									required="required" class="form-control"
									id="ExampleInputEmail1" aria-describedby="emailHelp"
									name="name">
							</div>

							<div class="form-group">
								<label>Enter Qualification</label><input type="text"
									required="required" class="form-control"
									id="ExampleInputEmail1" aria-describedby="emailHelp" name="qua">
							</div>

							<div class="form-group">
								<label>Enter Email</label><input type="text" required="required"
									class="form-control" id="ExampleInputEmail1"
									aria-describedby="emailHelp" name="email">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label><input
									required="required" type="password" class="form-control"
									id="ExampleInputPassword1" name="ps">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</form>

</body>
</html>
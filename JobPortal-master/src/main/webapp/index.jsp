<%@page import ="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Portal</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img{
background:url("img/i1.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size:cover;
}</style>
</head>
<body >
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa-solid fa-book" aria-hidden="true"></i> Online Job Portal
			</h1>
		</div>
	</div>
	
	<%@include file="all_component/footer.jsp" %>
</body>
</html>
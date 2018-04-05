<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>Danh sách sinh viên</h3>
<table>
<tr>
<th>Roll Number</th>
<th>FullName</th>
<th>Gender</th>
<th>Birthday</th>
<th>Address</th>
<th>ClassName</th>
<th>Action</th>
</tr>
<c:forEach items="${listStudent}"  var="sv" >
<tr>
<td><a href="studentController?id=${sv.rollNumber}">${sv.rollNumber}</a></td>
<td>${sv.fullName}</td>
<td>${sv.gender?"Nu":"Nam"}</td>
<td>${sv.birthday}</td>
<td>${sv.address }</td>
<td>${sv.className }</td>
<td>
<a href="studentController?type=update&id=${sv.rollNumber}">Update</a>
</td>
</tr>
</c:forEach>
<tr>
<td>
<a href="createsinhvien">Create sinhvien</a>
</td>
</tr>
</table>
</center>

</body>
</html>
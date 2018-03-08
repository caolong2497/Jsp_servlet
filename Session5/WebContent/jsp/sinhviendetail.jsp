<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chi tiết sinh viên</title>
</head>
<body>
<table>
<tr>
<td>RollNumber</td>
<td>${student.rollNumber }</td>
</tr>
<tr>
<td>Name</td>
<td>${student.fullName }</td>
</tr>
<tr>
<td>Gender</td>
<td>${student.gender?"Nu":"Nam" }</td>
</tr>
<tr>
<td>ngay sinh</td>
<td>${student.birthday}</td>
</tr>
<tr>
<td>dia chi</td>
<td>${student.address }</td>
</tr>
<tr>
<td>class name</td>
<td>${student.className }</td>
</tr>
</table>
</body>
</html>
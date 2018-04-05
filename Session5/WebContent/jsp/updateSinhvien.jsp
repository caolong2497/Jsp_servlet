<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="studentController?type=update" method="post">
	<table>
			<tr>
			<td><input type="hidden"  name="id" value="${student.rollNumber }"></td>		
			</tr>
			<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="${student.fullName }"></td>
			</tr>
			<tr>
			<td>gender</td>
			<td>
			<select name="gender">
				<option value="0">Nam</option>
				<option value="1">Nu</option>
			</select>
			</td>
			</tr>
			<tr>
			<td>birthday</td>
			<td><input type="text" name="birthday" value="${student.birthday}"></td>
			</tr>
			<tr>
			<td>address</td>
			<td><input type="text" name="address" value="${student.address }"></td>
			</tr>
			<tr>
			<td>className</td>
			<td><input type="text" name="className" value="${student.className }"></td>
			</tr>
			<tr>
			<td></td>
			<td>
			<input type="submit" value="update">
			</td>
			</tr>
	</table>
</form>
</body>
</html>
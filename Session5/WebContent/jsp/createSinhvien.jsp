<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="studentController" method="post">
	<table>
			<tr>
			<td>RollNumber</td>
			<td><input type="text" name="id"></td>
			
			</tr>
			<tr>
			<td>Name</td>
			<td><input type="text" name="name"></td>
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
			<td><input type="date" name="birthday"></td>
			</tr>
			<tr>
			<td>address</td>
			<td><input type="text" name="address"></td>
			</tr>
			<tr>
			<td>className</td>
			<td><input type="text" name="className"></td>
			</tr>
			<tr>
			<td></td>
			<td>
			<input type="submit" value="Create">
			</td>
			</tr>
	</table>
</form>
</body>
</html>

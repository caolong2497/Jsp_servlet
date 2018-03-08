<%@page import="user.user"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style>
table {
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid black;
}
th{
	padding:5px 20px;
	text-align:center;
}
td{
	text-align:center;
	padding:5px 20px;
}
</style>
<body>
		<% ArrayList<user> list=new ArrayList<user>();
			list=(ArrayList<user>)request.getAttribute("list");
	%>
	
	<center>
	<h3>table sử dụng JSP</h3>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>BirthDay</th>
			<th>Birth Place</th>
		</tr>
	<% for(user ls:list){
		%>
		<tr>
			<td><%=ls.getId() %></td>
			<td><%=ls.getName() %></td>
			<td><%=ls.getBirthDay() %></td>
			<td><%=ls.getBirthPlace() %></td>
		</tr>
	<%} %>
		
	</table>
	</center>
	
	<center>
	<h3>table sử dụng JSTL</h3>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>BirthDay</th>
			<th>Birth Place</th>
		</tr>
  <c:forEach items="${list}" var="user">
   <tr>
   <td> <c:out value="${user.getId()}"/> </td>
    <td> <c:out value="${user.getName()}"/> </td>
    <td> <c:out value="${user.getBirthDay()}"/> </td>
    <td> ${user.getBirthPlace()}</td>
   </tr>
  </c:forEach>
		</table>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://localhost:1433;databaseName=JSPServlet_Session5" 
	user="sa" 
	password="Long123$" 
	scope="session" 
	var ="con"/>
	 <sql:query var="rs" dataSource="${con}"> 
		select * from TblStudent
	</sql:query>
	<center>
		<c:forEach items="${rs.rows}" var="st">
		<p>${ st.FullName}</p>
		</c:forEach>
	</center>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<!-- Thực hiện lệnh update -->
	<sql:update dataSource="${con}"
		sql="update Pet set category_id=? where pet_id=?" var="i">
		<sql:param value="${param.category}" />
		<sql:param value="${param.petId}" />
	</sql:update>
	<!-- Kiểm tra thực hiện và thông báo -->
	<c:if test="${i>0}">
		<c:set var="status"
			value="Đã đổi category cho Pet với tên: ${param.name}"
			scope="request" />
		<!-- Quay về trang "home.jsp" và hiển thị thông báo -->
		<jsp:forward page="home.jsp" />
	</c:if>
	<c:if test="${i>0}">
		<c:set var="status"
			value="Có lỗi khi đổi category cho Pet với tên: ${param.name}"
			scope="request" />
		<!-- Quay về trang changeCategoryForPet.jsp và thông báo lỗi -->
		<jsp:forward page="changeCategoryForPet.jsp?petId=${param.petId}" />
	</c:if>
</body>
</html>
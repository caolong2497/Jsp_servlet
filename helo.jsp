<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<!-- Sử dụng thẻ jstl sql để tạo truy vấn -->
	<!-- Truy vấn của PetCategory -->
	<sql:query var="rs" dataSource="${con}">             select * from PetCategory         </sql:query>
	<!-- Truy vấn để lấy Pet theo PetCategory -->
	<sql:query var="rsPet" dataSource="${con}"
		sql="select * from Pet where category_id=?">
		<sql:param value="${param.catId}" />
		<!-- Tham số được truyền từ trang home.jsp tới-->
	</sql:query>

	<!-- Trình bày nội dung -->
	<center>
		<table border="1">
			<tr>
				<td><c:forEach items="${rs.rows}" var="cat">
						<a href="loadPet.jsp?catId=${cat.category_id}"> <img
							src="${cat.img_url}" /><br />
						</a>
					</c:forEach></td>
				<td style="width: 500px; vertical-align: top">
					<table>
						<tr>
							<th>Pet Name</th>
							<th>Price</th>
							<th>Change 2 Other Category</th>
						</tr>
						<c:forEach items="${rsPet.rows}" var="p">
							<tr>
								<td>${p.pet_name}</td>
								<!-- Tên cột trong database-->
								<td>${p.price}</td>
								<td><a href="changeCategoryForPet.jsp?petId=${p.pet_id}">
										<img src="${p.pet_img_url}" />
								</a></td>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>아이디</th>
			</tr>
			<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.uiNum}</td>
				<td>${user.uiId}</td>
				<td>${user.uiName}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
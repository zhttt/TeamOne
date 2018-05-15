<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
<form id="ur" method="post">
	<input type="hidden" id="uid" name="uid" value="${id}">
	<c:forEach items="${role}" var="role">
		<input type="checkbox" id="r_id" name="r_id" value="${role.r_id}"
				<c:forEach items="${rolee}" var="rolee">
					<c:if test="${rolee.r_id==role.r_id}">
						checked="checked"
					</c:if>
				</c:forEach>
		/>${role.r_name}</br>
	</c:forEach>
</form>
</body>
</html>
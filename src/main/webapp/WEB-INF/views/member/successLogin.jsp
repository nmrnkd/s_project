<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>+++successLogin+++</title>
</head>
<body>
<jsp:include page="../default/header.jsp"></jsp:include>
<div align="center">
	<br><br>
	<h2>${loginUser }님 환영합니다</h2>
</div>
<jsp:include page="../default/footer.jsp"></jsp:include>
</body>
</html>
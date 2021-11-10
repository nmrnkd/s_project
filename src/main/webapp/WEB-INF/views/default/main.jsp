<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.wrapContent {
	width: 100%; height: 100%;

}
div{
	text-align:center;
}
nav {
	text-align:center;
	background-color:white;
}
nav img{
	width:500px; height:350px;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />
		<div class="wrapContent">
			<h3>개발....</h3>
				<nav>
					<img src="${contextPath }/resources/images/shotgun.jpg">
				</nav>
			<h3>새발....</h3>		
		</div>
	<jsp:include page="footer.jsp" />

</body>
</html>

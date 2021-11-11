<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="{pageContext.request.contextPath}"/>
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
img{
	text-align:center;
	width:500px; height:350px;
}
h3 {
	align: center;
	height: 30px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
		<div class="wrapContent">
			<h3>일찍 일어난 새가</h3>
				<img src="https://i.imagesup.co/images2/c86c520e4d101ecc10dfe73b9184c2edab274135.png">
			<h3>피곤하다...</h3>		
		</div>
	<jsp:include page="footer.jsp" />
</body>
</html>

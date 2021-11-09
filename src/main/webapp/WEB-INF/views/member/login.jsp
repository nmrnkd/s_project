<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>
<head>
<meta charset="UTF-8">
<title>+++LOGIN+++</title>
</head>
<body>
<header>
	<jsp:include page="../default/header.jsp"></jsp:include>
</header>
	<h1>로그인 페이지 입니다</h1>
	
	<form action="loginChk" method="post">
		<table>
			<tr>
				<td>
					<input type="text" name="id" placeholder="아이디">
				</td>	
				<td style="width:50px; height:50px;" rowspan="2">
					<input type="submit" value="로그인" >	
				</td>	
			</tr>
			<tr>
				<td>
					<input type="text" name="pw" placeholder="비밀먼호">
				</td>
			</tr>
	</table>
</form>	
<footer>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</footer>		
</body>
</html>
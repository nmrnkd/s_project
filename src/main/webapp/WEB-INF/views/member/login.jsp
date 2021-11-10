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
<div align="center">
<br>
	<h3>로그인 페이지 입니다</h3>
<br><br>
</div>
<div align="center">
	<form action="user_check" method="post">
		<table>
			<tr>
				<td>
					<input type="text" name="id" placeholder="아이디">
				</td>	
				<td rowspan="2">
					<input type="submit" value="로그인" style="width:60px; height:50px;" >	
				</td>	
			</tr>
			<tr>
				<td>
					<input type="password" name="pw" placeholder="비밀먼호">
				</td>
			</tr>
			<tr>
				<td colspan="2" aling="left"><a href="register_form">회원가입</a></td>
			</tr>
		</table>
	</form>
</div>	
<footer>
	<jsp:include page="../default/footer.jsp"></jsp:include>
</footer>		
</body>
</html>
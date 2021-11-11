<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header><c:import url="../default/header.jsp"/></header>

<div align="center">
<form action="register" method="post">
	<table>
		<caption>회원 등록</caption>
		<tr>
			<td><input type="text" name="id" placeholder="아이디"></td>
		</tr>	
		<tr>
			<td><input type="password" name="pw" placeholder="비밀번호"></td>
		</tr>	
		<tr>
			<td><input type="text" name="addr" placeholder="주소"></td>
		</tr>	
		<tr>
			<td align="center"><input type="submit" value="회원가입" style="width:70px; height:30px;"></td>
		</tr>	
	</table>
</form>
</div>
<footer><c:import url="../default/footer.jsp"/></footer>
</body>
</html>
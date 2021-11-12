<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>+++REGISTER+++</title>
<script src="<%=request.getContextPath()%>/resources/js/daumpost.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function register(){	
	addr1 = $("#addr1").val()
	addr2 = $("#addr2").val()
	addr3 = $("#addr3").val()
	addr = addr1 + "/" + addr2 + "/" + addr3
	$("#addr1").val(addr)
	fo.submit()
}
</script>
</head>
<body>
<header><c:import url="../default/header.jsp"/></header>

<div align="center">
	<form id="fo" action="register" method="post">
		<input type="text" name="id" placeholder="아이디"><br>	
		<input type="password" name="pw" placeholder="비밀번호"><br>
		<input type="text" name="addr" id="addr1" readonly placeholder="우편번호"><br>
		<input type="text" id="addr2" readonly placeholder="주소"><br>
		<input type="text" id="addr3" placeholder="상세주소"><br>
		<input type="button" onclick="daumPost()" value="우편번호 검색">
		<input type="button" onclick="register()" value="회원가입">
	</form>
</div>
<footer><c:import url="../default/footer.jsp"/></footer>
</body>
</html>
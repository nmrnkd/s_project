<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table{
	width: 150px; height:50px;
	padding: 50px;
	margin-left: auto;
	margin-right: auto;
}
.input {
	width: 130px; height:20px;
}
.button {
	width: 50px; height:50px;
}
.aa{
	width: 20%; height: 100%;
	margin: auto;
	background-color: #EAEAEA;
	text-align: center;
}
#join {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	background-color: yellow;
}
</style>
</head>
<body>
<jsp:include page="../default/header.jsp" flush="true"/>
	
	<form action="${contextPath }/login/login_chk.jsp">
		<table class="table">
			<tr>
				<td>
					<input class="input" type="text" name="id" placeholder="input id">
				</td>
				<td rowspan="2">
					<button class="button" type="submit">login</button>
				</td>
			</tr>
			<tr>
				<td>
					<input class="input" type="password" name="pwd" placeholder="input password">
				</td>
			</tr>
		</table>
	</form>
	<div class="aa">
		<h5><label id="join">아직 회원이 아니신가요? </label></h5>
		<a href="${contextPath }/membership/register.jsp">회원가입</a>
	</div>
<jsp:include page="../default/footer.jsp" flush="true"/>

</body>
</html>
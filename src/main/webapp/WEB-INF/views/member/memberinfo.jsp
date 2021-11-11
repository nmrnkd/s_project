<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: 2px solid green;
}
tr th{
	text-align: center;
	font-size: 12pt;
	padding: 15px 20px 15px 20px;
}
tr td{
	text-align: center;
	font-size: 13pt;	
}
</style>
</head>
<body>
<jsp:include page="../default/header.jsp"/>
<div align="center"><Br><br>
	<table>
		<caption style="font-size:20pt;"><b>회원 정보</b></caption>
			<tr>
				<th>아이디</th> <th>비밀번호</th> <th>주소</th>
			</tr>
			<c:forEach items="${memberList }" var="mem">
				<tr>
					<td>${mem.id }</td>
					<td>${mem.pw }</td>
					<td>${mem.addr }</td>
				</tr>
			</c:forEach>
	</table>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>
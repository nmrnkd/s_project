<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>+++INFO+++</title>
</head>
<body>
	<jsp:include page="../default/header.jsp"/>
<div align="center"><Br><br>
	<table>
		<caption style="font-size:20pt;"><b>회원 정보</b></caption>
			<tr>
				<th>아이디</th> <th>비밀번호</th> <th>주소</th>
			</tr>
			<tr>
				<td>${info.id }</td>
				<td>${info.pw }</td>
				<td>${info.addr }</td>
			</tr>
	</table>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>
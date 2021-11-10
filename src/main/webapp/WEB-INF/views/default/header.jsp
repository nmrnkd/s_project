<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&family=Red+Hat+Mono:ital,wght@0,300;0,500;1,400;1,500;1,700&family=Roboto+Slab:wght@600;900&family=Yeon+Sung&display=swap" rel="stylesheet"><style type="text/css">
* { margin: 0; }
.wrap { width: 100%; margin: auto; }
.header { width: 100%; margin-left:auto; margin-right:auto; background-color: white; }
.navdiv{width:100%; background-color: black; }
nav{ background-color: black; width: 100%; }
nav ul { list-style: none; display: flex; justify-content: flex-end; }
nav ul li { margin: 0 3px; padding: 10px 10px; }
nav ul li a { text-decoration: none; color: white; }
nav ul li a:hover {
    color: green; padding-bottom: 3px; /* a태그 밑줄과 글씨 간격*/
    border-bottom: 1px solid orange; transition: all 0.25s;
}
.title{
	height:200px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	background-color:green;
	color: orange;
	background: url("https://media.istockphoto.com/photos/forest-top-view-picture-id511989240?k=20&m=511989240&s=170667a&w=0&h=QD6vU-CrhnP_yP-KrJFUKfbkqnk5MRndesWCncpPCSQ="); 
	font-family: 'Yeon Sung', cursive;
	font-size: 100pt;
}
.content{ margin-top: 50px; }
</style> </head> <body>
<div class="wrap">
    <div class="header"> <h1 style="line-height: 150px;" class="title">+++NMRNKD CLUB+++</h1> </div>
</div>
<div class="navdiv">
<div class="wrap">
<nav>
<ul>
	<li><a href="${contextPath }/index">HOME</a></li>
	<li>
		<c:choose>
			<c:when test="${loginUser==null }">
				<a href="${contextPath }/member/login">LOGIN</a>
			</c:when>
			<c:otherwise>
				<a href="${contextPath }/member/index">LOGOUT</a>			
			</c:otherwise>
		</c:choose>	
	</li>
</ul>
    
</nav>
</div>
</div>
</body> </html>

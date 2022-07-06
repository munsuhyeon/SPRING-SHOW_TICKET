<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<title>Header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
	
<header>
	<div>
		<h1><a href="${pageContext.request.contextPath}/"><img src="<c:url value="/resources/img/mainlogo.png"/>"></a></h1>
		<h2 class="hide">대메뉴</h2>
		<!--  <nav>
			<ul>
				<li><a href="concert">콘서트</a></li>
				<li><a href="musical">뮤지컬</a></li>
				<li><a href="drama">연극</a></li>
			</ul>
		</nav>-->			
			<ul class="spot">
				<li>
				<% 	String sessionId = (String)session.getAttribute("id");
					if(sessionId == null){
				%>
					<a href="login">로그인</a>
				<% 
					} else { 
				%>
					<a href="logout">logout</a>
				<%
					} 
				%>
				</li>
				<li>
				<% 
					if(sessionId == null){
				%>
					<a href="join">회원가입</a>
				<% 
					} else if(sessionId.equals("admin")){
						%>
						<a href="admin_customer">관리자</a>
					<%	
					}else { 
				%>
					<a href="mypage"><%= sessionId%>님</a>
				<%
					} 
				%>	
				</li>
				<li><a href="list">고객센터</a></li>
				
			</ul>
			<ul class="search_menu">
				<form action="search_result" method="post">
					<li><input type="text"  name="title" placeholder="검색어 입력" class="search_bar"></li>
					<li><button type="submit" class="searchbtn">검색</button></li>
				</form>
			</ul>
	</div>
</header>

</body>
</html>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>reply</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/write.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<style>
strong{
margin-left:11em;
}
a{
color:inherit;
}
a:hover{
color:#ffd938;
}
</style>
</head>
<body>
<header>
	<div>
		<h1><a href="${pageContext.request.contextPath}/"><img src="<c:url value="/resources/img/mainlogo.png"/>"></a></h1>
		<h2 class="hide">대메뉴</h2>
		<nav>
			<ul>
				<li><a href="concert">콘서트</a></li>
				<li><a href="musical">뮤지컬</a></li>
				<li><a href="drama">연극</a></li>
			</ul>
		</nav>			
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
					} else { 
				%>
					<a href="mypage"><%= sessionId%>님</a>
				<%
					} 
				%>	
				</li>
				<li><a href="list">고객센터</a></li>
				<% if(sessionId.equals("admin")){ %>
				<li><a href="admin_customer">관리자</a></li>
				<%} %>
			</ul>
			<ul class="search_menu">
				<li><input type="text" placeholder="검색어 입력" class="search_bar"></li>
				<li><button type="submit" name="searchbtn"class="searchbtn">검색</button></li>
			</ul>
	</div>
</header>
<div id="wrapper">
<div id="content">

<form action="write_reply" method="post" name="reg_frm">
<input type="hidden" name="bnum" value="${qview.bnum }">

<%String mid = (String)session.getAttribute("id"); %>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">아이디</label>
  <input type="text" class="form-control" name="bid" value="${qview.bid }" readonly> 
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="btitle" value="${qview.btitle }[답변완료]">
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="bcontent">${qview.bcontent }</textarea>
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">답변</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="breply"></textarea>
</div>

	<div class="btn_area">
		<input type="button" class="btn btn-warning" id="btn" value="글목록" onclick="javascripot:window.location='admin_cicboard'">&nbsp;&nbsp;&nbsp;
		<input type="submit" class="btn btn-warning" id="btn" value="답변쓰기" >
  	</div>

</div><!-- content -->  
</div><!-- wrapper --> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>
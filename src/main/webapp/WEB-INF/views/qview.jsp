<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>qview</title>
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
<%@ include file="include/header.jsp" %>
<div id="wrapper">
<div id="content">

<form action="modify" method="post" name="reg_frm">
<input type="hidden" name="bnum" value="${qview.bnum }">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">아이디</label>
  <input type="text" class="form-control" name="bid"
  value="${qview.bid }" readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input type="text" class="form-control" name="btitle" value="${qview.btitle }">
</div>

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="bcontent">${qview.bcontent }</textarea>
</div>

<div class="btn_area">
	<input type="submit" class="btn btn-primary btn-lg" id="btn" value="글수정">
	<input type="button" class="btn btn-primary btn-lg" id="btn" value="글목록" onclick="javascripot:window.location='list'">
	<a href="delete?bnum=${qview.bnum}"><strong>글 삭제</strong></a>
  </div>

<%@ include file="include/footer.jsp" %>
  
</div><!-- content -->  
</div><!-- wrapper -->  
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>
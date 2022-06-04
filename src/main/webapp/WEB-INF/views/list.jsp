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
<title>list</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
</head>
<body>
<%@ include file="include/header.jsp" %>

<h2 align="center">고객센터</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col" class="text-center">번호</th>
      <th scope="col" class="text-center">제목</th>
      <th scope="col" class="text-center">작성자</th>
      <th scope="col" class="text-center">작성일</th>
      <th scope="col" class="text-center">조회수</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var = "dto">
    <tr>
      <th scope="row"  class="text-center">${dto.bnum}</th>
      <td style="width: 50%" class="text-center"><a href="qview?bnum=${dto.bnum}">${dto.btitle }</a></td>  
      <td style="width: 10%" class="text-center">${dto.bid}</td>
      <td style="width: 20%" class="text-center">${dto.bdate}</td>
      <td style="width: 10%" class="text-center">${dto.bhit}</td>
    </tr>  
   </c:forEach>
    <tr>
	    <td colspan="5" align="right">
	    	<input id="button01" type="button" class="btn btn-primary" value="글쓰기" onclick="javascript:window.location='question'">
	    </td>
    </tr>
  </tbody>
</table>

<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">티켓월드(주) &copy; WorldTicket All rights Reserved</p>
    <p class="mb-0">TEL : 031-1234-1234 Email : <a href="mailto:shcnu16@gmail.com">shcnu16@gmail.com</a></a>.</p>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
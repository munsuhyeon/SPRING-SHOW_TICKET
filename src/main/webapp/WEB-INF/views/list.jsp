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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
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

	<!--  <nav aria-label="Page navigation example">
  		<ul class="pagination justify-content-center">
	   		<li class="page-item disabled"><a class="page-link">Previous</a></li>  
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>    
  		</ul>
	</nav>-->
<%@ include file="include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>		
</body>
</html>
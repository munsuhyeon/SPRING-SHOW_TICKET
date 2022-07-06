<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>search_result</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<style>
.card{
float:left;
margin:3em 0 3em 5em;
}
.str{
margin-left:6em;
}
</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
<h3 class="str">검색결과</h3><hr>
	<div class="wrapper">
	<table>
	<tr>
	<td>
		<c:forEach items="${concertDto}" var = "concertDto">
			<div class="card" style="width: 19rem;">
			  	<img src="${concertDto.pic}" class="card-img-top" alt="...">
			  	<div class="card-body">
				    <h5 class="card-title" align="center">제목 : ${concertDto.ctitle}</h5>
				    <p class="card-text">장소 : ${concertDto.cplace}</p>
				    <p class="card-text">날짜 : <fmt:formatDate pattern="yyyy-MM-dd" value="${concertDto.cstartdate}"/> ~ 
				      					 <fmt:formatDate pattern="yyyy-MM-dd" value="${concertDto.cenddate}"/></p>
				    <p class="card-text">시간 : ${concertDto.ctime}분</p>
				    <p class="card-text">가격 : ${concertDto.cprice}원</p>
				    <a href="seatpage?cnum=${concertDto.cnum}" class="btn btn-warning">예매하기</a>
		   	 	</div>
			</div>
		</c:forEach>
		</td>
		</tr>
	</table>	
	</div>	
	
<%@ include file="include/footer.jsp" %>	
</body>
</html>
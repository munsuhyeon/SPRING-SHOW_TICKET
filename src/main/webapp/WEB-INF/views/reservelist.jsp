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
<title>reservelist</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<style>
.card{
float:left;
margin:3em 0 3em 5em;
}
</style>
<%
		session.removeAttribute("ticket");
		session.removeAttribute("price");
		session.removeAttribute("date");
	%>
	<script type="text/javascript">
		sessionStorage.removeItem("ticket_text");
	</script>

</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<c:choose>
	
	<c:when test="${empty reservedto}">
		<h2 align="center">예매내역이 없습니다</h2>
	</c:when>
	
	<c:otherwise>
	<div class="wrapper">
	<table>
		<tr>
			<td>
				<c:forEach items="${reservedto}" var="reservedto">
				<div class="wrapper" style="float:left;">
					<form action="refund" method="post" name="refund">
						<div class="card" style="width: 19rem;">
						    <img src="${reservedto.bpic}" class="card-img-top">
						  	<div class="card-body">
							    <h5 class="card-title">제목 : ${reservedto.btitle}</h5>
							    <p class="card-text">장소 : ${reservedto.bplace}</p>
							    <p class="card-text">날짜 : <fmt:formatDate pattern="yyyy-MM-dd" value="${reservedto.bdate}"/> 
							      					 
							    <p class="card-text">시간 : ${reservedto.btime}분</p>
							    <p class="card-text">예매 장 수 : ${reservedto.bcount}장</p>
							    <script type="text/javascript">
									function resultcommas() {						
								 	var number = "<c:out value='${reservedto.bprice}'/>";
								  	return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
								}
									var str = resultcommas();
								</script>
							    <p class="card-text">가격 : <script>document.write(str);</script>원</p>
							    <p class="card-text" style="color:red;">${reservedto.bstate}</p>
							    <input type="hidden" name="bstate" value="예매취소">
							    <input type="hidden" name="bnum" value="${reservedto.bnum}" class="bnum">
							    <input type="submit" class="btn btn-warning" value="예매취소" onclick="refund_alert()">
					   	 	</div>
					   	 </div>
					 </form>
				 </div>
				 </c:forEach>
			</td>
		</tr>
	</table>
	</div>	
	</c:otherwise>
	
	</c:choose>	
<%@ include file="include/footer.jsp" %>	
</body>
	<script>
function refund_alert(){
alert("예매취소 요청되었습니다");
}
</script>
</html>
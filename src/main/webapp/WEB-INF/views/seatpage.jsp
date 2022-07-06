<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.suhyeon.profile_web.dto.MemberDto"%>
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
<title>seatpage</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/seat.css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/magic-input/dist/magic-input.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- date picket -->
<link href="jquery-ui.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><style>
</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
<%
		if (request.getSession().getAttribute("id") == null) {
	%>
	<script>
		alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!")
		location.href = "moveindex.do"
	</script>
	<%
		}
	%>	
</script>
	<div class="wrapper">
	<div class="date_area" align="center">
	 <form action="reserveOk" method="post" name="reserve">
	<table width="100%" border="0" cellspacing="0" cellpadding="10">
		<tr>
			<td height="500" align="center">
				<table border="0" cellspacing="0" cellpadding="10">		
					<tr>
						<td class="info">
							<div align="left">
							<div class="card" style="width: 18rem;"><!-- card -->
			  				<img src="${seatpage.pic}" class="card-img-top" alt="...">
			  				<input type="hidden" value="${seatpage.pic}" name="pic">
			  				<div class="card-body">
				    		<p class="card-text" align="center">${seatpage.ctitle}<br>
				    		<input type="hidden" value="${seatpage.ctitle}" name="title">
				    		${seatpage.cplace}<br>
				    		<input type="hidden" value="${seatpage.cplace}" name="place">
				    		<fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cstartdate}"/> ~ 
				    		<fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cenddate}"/><br>${seatpage.ctime}분<br>${seatpage.cprice}원</p>
				    		<input type="hidden" value="${seatpage.ctime}" name="time">
				    		<input type="hidden" value="${seatpage.cprice}" name="price">
				  			</div>
							</div>
							</div><!-- card -->
						</td>
						
						<td>
						<div align="center">
							<h4>날짜 선택하기</h4>
							<hr>
								<select name="date" id="date" onchange="changeFn()">
									<option disabled selected align="center">-- 선택 --</option>
									<option value="<fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cstartdate}"/>" name="date" align="center"><fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cstartdate}"/></option>
									<option value="<fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cenddate}"/>" name="date" align="center"><fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cenddate}"/></option>
								</select>
							</div>
						</td>
						
						<td>
						<div align="center">
							<h4>티켓 수 선택</h4>
								<hr>
									<select name="ticket" id="ticket" onchange="ticketFn()">
										<option disabled selected align="center">-- 선택 --</option>
										<option value="1" name="ticket" align="center">1장</option>
										<option value="2" name="ticket" align="center">2장</option>
										<option value="3" name="ticket" align="center">3장</option>
										<option value="4" name="ticket" align="center">4장</option>
									</select>
						</div>	 	
						</td>
					</tr>
					
					<tr>
					<td align="center" colspan="3">
								<input type="submit" value="구매하기" class="btn btn-warning">
								<input type="reset" value="초기화" class="btn btn-warning">
						</td>
					</tr>
					</form>
				</table>  
			</td>
		</tr>        
	</table>  	
</div>

<%@ include file="include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>		
</body>
<script>
	function changeFn(){
		var target = document.getElementById("date");
		var str = target.options[target.selectedIndex].text;
		//alert(str);
		sessionStorage.setItem("date",str);
	}
	function ticketFn(){
		var ticket = document.getElementById("ticket");
		var text = ticket.options[ticket.selectedIndex].text;
	//	var value = ticket.options[ticket.selectedIndex].value;
		sessionStorage.setItem("ticket_text",text)
	//	sessionStorage.setItem("ticket_value",value)
	}
	</script>
</html>
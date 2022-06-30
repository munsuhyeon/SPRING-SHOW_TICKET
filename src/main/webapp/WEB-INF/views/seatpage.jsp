<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.suhyeon.profile_web.dto.MemberDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<%
	MemberDto login = (MemberDto) session.getAttribute("login");
	if(login != null)
		//System.out.println(login.toString());

%>
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
<style type="text/css">
.abc{
 letter-spacing: -5.5px;
}
</style>
</head>
<script>
function CountChecked(field){
	var checkBox = document.getElementsByName("seat"); //name값 체크박스를 불러옴
	var checkCount = 0; //초기값 0으로 설정
	for(var i=0; i<checkBox.length; i++){//반복문으로 초기값,조건식,증감식 설정
		if(checkBox[i].checked){ // 조건문으로 checkBox가 checked 됐을 경우
			checkCount++; // 1씩 증가
		}
	}
	if(checkCount > 4){ // 선택한 체크가 4개보다 클 경우
		alert("1인당 최대구매 4장까지만 가능합니다"); // alert를 띄움
		field.checked = false; //false를 주어 alert를 띄운 뒤에 check되지 않도록 설정
		return false;
		}
	}
	</script>
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
	
	<div class="wrapper">
	<div class="date_area" align="center">
	  <form action="reserveOk" method="get" name="reserve">
	<h4>날짜 선택하기</h4>
		<select name="date" id="date" onchange="changeFn()">
			<option disabled selected>날짜를 선택하세요</option>
			<option value="start"><fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cstartdate}"/></option>
			<option value="end"><fmt:formatDate pattern="yyyy-MM-dd" value="${seatpage.cenddate}"/></option>
		</select>
	</div>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="10">
		<tr>
			<td height="500" align="center">
				<table border="0" cellspacing="0" cellpadding="10">		
					<tr>
						<td class="info">
							<div align="left">
							<div class="card" style="width: 18rem;"><!-- card -->
			  				<img src="${seatpage.pic}" class="card-img-top" alt="...">
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
							<h4>좌석을 체크한 후에 구매하기 버튼을 클릭하세요</h4>
								<hr>
									  <!--  <form action="reserveOk" method="post" name="reserve">-->
										<b>좌석 배치도</b><br/>
										&nbsp;&nbsp;
										<% for(char c = 'A'; c <= 'Z'; c++){ %>
										<small class="abc"><%=c %></small>&nbsp;&nbsp;
										<%} %>	
										<br/>
										<% for(int i = 1; i<=6; i++){ %>
										<%=i %>
										<% for(char c='A'; c<='Z'; c++) {%>
										<input type="checkbox" name="seat" onClick="CountChecked(this);" class="mgc mgc-warning mgc-lg" value="<%=c %>-<%=i %>"  <c:if test="${item.checkbox eq 'Y'}">checked</c:if> >							
										<%} %>
										<br/>
										<%= i == 3 ? "<br/>" : "" %>
										<%} %>	 	
								<br/>
								<input type="submit" value="구매하기" class="btn btn-warning" onclick="reserveConfirm()">
								<input type="reset" value="초기화" class="btn btn-warning">
							</form>
						</div><!-- table-->
						
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
		//console.log(sessionStorage.getItem("data"));
	}
	</script>
</html>
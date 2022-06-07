<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.suhyeon.profile_web.dto.MemberDto"%>
    <%@page import="com.suhyeon.profile_web.dto.ReserveDto"%>
<!DOCTYPE html>
<html>
<%
	MemberDto login = (MemberDto) session.getAttribute("login");
	if(login != null)
		System.out.println(login.toString());

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
<table  width="100%" border="0" cellspacing="0" cellpadding="10">
	<tr>
		<td height="500" bgcolor="#F8F9FA" align="center">
			<table border="0" cellspacing="0" cellpadding="10">
				<div align="center">
					<h4>좌석을 체크한 후에 구매하기 버튼을 클릭하세요</h4>
						<hr/>
							<form action="reserveOk" method="post" name="reserve">
								<b>좌석 배치도</b><br/>
								&nbsp;&nbsp;
								<% for(char c = 'A'; c <= 'Z'; c++){ %>
								<small><%=c %></small>&nbsp;&nbsp;
								<%} %>
									 	
								<br/>
								<% for(int i = 1; i<=6; i++){ %>
								<%=i %>
								<% for(char c='A'; c<='Z'; c++) {%>
								<input type="checkbox" name="seat" value="<%=c %>-<%=i %>">
								<%} %>
								<br/>
									 	
								<%= i == 3 ? "<br/>" : "" %>
								<%} %>
									 	
						<br/>
						<input type="submit" value="구매하기" class="btn btn-warning">
						<input type="reset" value="초기화" class="btn btn-warning">
					</form>
				</div>
			</table>  
		</td>
	</tr>        
</table>  	 
<%@ include file="include/footer.jsp" %>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>		
</body>
</html>
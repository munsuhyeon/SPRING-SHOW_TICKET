<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>reserveOk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
<%@ include file="include/header.jsp" %>
<%
		if (session.getAttribute("date") == null) {
	%>
	<script>
		alert("공연날짜를 선택해주세요")
		location.href = "index"
	</script>
	<%
		}
	%>	
	<%
		if (session.getAttribute("ticket") == null) {
	%>
	<script>
		alert("티켓수를 선택해주세요")
		location.href = "index"
	</script>
	<%
		}
	%>	
	<% String text = (String)session.getAttribute("date");%>
	
<table width="100%" border="0" cellspacing="0" cellpadding="10">
	<tr>
		<td height="500" bgcolor="#F8F9FA" align="center">
			<table border="0" cellspacing="0" cellpadding="10">
				<form action="pay" method="post">

					<tr>
						<td>
							<div align="center">
								<tr><td align="center"><h3>선택한 공연 정보</h3></td></tr>
								<tr><td align="center">
								<input type="hidden" name="bpic" value="${param.pic}" >
								<input type="hidden" name="bid" value="<%=session.getAttribute("id")%>" >
								<hr>공연 제목 : ${param.title}<br><input type="hidden" value="${param.title}" name="btitle">
								공연 장소 : ${param.place}<br><input type="hidden" value="${param.place}" name="bplace">
								선택한 날짜 :<%=session.getAttribute("date")%><br>
								공연 시간 : ${param.time}분<br><input type="hidden" value="${param.time}" name="btime">
								
								<%	String aaa = (String)session.getAttribute("ticket");
									int count = 0;			
									if(aaa != null){
												count = Integer.parseInt(aaa);
											}
								%>	
								<%	String temp = (String)session.getAttribute("price");
									int price = 0;			
									if(temp != null){
												price = Integer.parseInt(temp);
											}
								%>
								<script type="text/javascript">
									function resultcommas() {
									
									    var number = <%=price*count %>;
									    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
									}
									var str = resultcommas();
									</script>
									<script type="text/javascript">
										function ticketcommas() {
										
										    var number = "<c:out value='${param.price}'/>";
										    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
										}
										var price = ticketcommas();
										</script>
								가격 : <script>document.write(price);</script> * <script>document.write(sessionStorage.getItem("ticket_text"));</script> = <script type="text/javascript">document.write(str);</script>원
								<input type="hidden" value="<%=price*count %>"name="bprice">
								<input type="hidden" value="<%=count %>"name="bcount">
								</td></tr>
								<tr><td>&nbsp;</td></tr>

								<tr><td>&nbsp;</td></tr>
								<tr><td align="center"><input type="submit" value="구매하기" class="btn btn-warning"></td></tr>
							</div>
						</td>
					</tr>
			</table>
		</td>
	</tr>
</table>	

         <%@ include file="include/footer.jsp" %>	
</body>

</html>
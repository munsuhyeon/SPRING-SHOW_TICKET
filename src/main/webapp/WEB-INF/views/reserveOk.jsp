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
<script>
	if(sessionStorage.getItem("date") == null){
	alert("날짜를 선택해주세요")
	location.href = "index"}
</script>
<%	String[]seats = request.getParameterValues("seat");
	if(seats == null){ %>
<script>
	alert("좌석을 선택해주세요")
	location.href = "index"
</script>
<%}else{
	List<String> list = new ArrayList<>();
	boolean check = true;
	// app에 B리스트가 있다면 꺼내와서 A에 저장
	if(application.getAttribute("seats") != null){
		list = (List<String>)application.getAttribute("seats");
	}
	//A리스트와 좌석 정보를 비교해서 중복된 좌석이 아니라면 사본 리스트를 생성하고, 하나씩 추가
	for(String s : seats){
		if(list.contains(s)){
			check = false;
			break;
		}
	}
	//사본리스트와 seat와 길이가 같다면 중복이 없다는 뜻
	//사본리스트를 A리스트에 전체 추가하고 app에 저장
	if(check){
		for(int i=0; i>seats.length; i++){
			list.add(seats[i]);
		}
		application.setAttribute("seats", list);
	}
}
	%>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
	<tr>
		<td height="500" bgcolor="#F8F9FA" align="center">
			<table border="0" cellspacing="0" cellpadding="10">
				<form action="pay" method="get">
					<tr>
						<td>
							<div align="center">
								<tr><td align="center"><h3>선택한 공연 정보</h3></td></tr>
								<tr><td align="center">
								<input type="hidden" name="bid" value="<%=session.getAttribute("id")%>" >
								공연 제목 : ${param.title}<br><input type="hidden" value="${param.title}" name="btitle">
								공연 장소 : ${param.place}<br><input type="hidden" value="${param.place}" name="bplace">
								선택한 날짜 :<script>document.write(sessionStorage.getItem("date"));</script><br>
								공연 시간 : ${param.time}분<br><input type="hidden" value="${param.time}" name="btime">
								
								<% if(seats != null){%>
								<%! int num = 0; %>
								<% num = Integer.parseInt(request.getParameter("price"));%> 	
								가격 : <%=num%>원 * <%=seats.length%>장 = <%=num * seats.length%>원<br>
								<%} %>
								<input type="hidden" value="<%= num * seats.length %>"name="bprice">
								</td></tr>
								<tr><td>&nbsp;</td></tr>
								<tr><td align="center"><h3>선택한 좌석</h3></td></tr>
								<tr><td align="center">
								<%	if(seats != null){ 
									for(int i=0; i<seats.length; i++){%>	
								<%= seats[i] %>
								<%}
									} %>	
											
								</td>
								</tr>
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
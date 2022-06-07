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
</head>
<body>
<%@ include file="include/header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	// 예약페이지에서 넘어온 좌석 정보를 받는다
	String[]seats = request.getParameterValues("seat");
	// 좌석정보를 임시로 저장할 A리스트 생성
	List<String> list = new ArrayList<>();
	boolean check = true;
	// app에 B리스트가 있다면 커내와서 A에 저장
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
	
%>
<table  width="100%" border="0" cellspacing="0" cellpadding="10">
	<tr>
		<td height="500" bgcolor="#F8F9FA" align="center">
			<table border="0" cellspacing="0" cellpadding="10">
				<tr><td><h3>구매한 좌석</h3></td></tr>
					<tr><td>
					<% for(int i=0; i<seats.length; i++){ %>
					<%= seats[i] %>
					<%} %>
				</td></tr>               			
			</table>  
		</td>
	</tr>        
</table>
         <%@ include file="include/footer.jsp" %>	
</body>
</html>
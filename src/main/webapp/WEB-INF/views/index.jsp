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
<title>test</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<%@ include file="index_banner.jsp" %>
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col" class="text-center">#</th>
      <th scope="col" class="text-center">제목</th>
      <th scope="col" class="text-center">장소</th>
      <th scope="col" class="text-center">날짜</th>
      <th scope="col" class="text-center">공연시간</th>
      <th scope="col" class="text-center">공연가격</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${index}" var = "dto">
    <tr>
      <th scope="row"  class="text-center"><img src="${dto.pic}"></th>
      <td style="width: 30%" class="text-center"><a href="seatpage?cnum=${dto.cnum}">${dto.ctitle}</a></td>  
      <td style="width: 20%" class="text-center">${dto.cplace}</td>
      <td style="width: 20%" class="text-center"><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.cstartdate}"/> ~ 
      											 <fmt:formatDate pattern="yyyy-MM-dd" value="${dto.cenddate}"/></td>
      <td style="width: 15%" class="text-center">${dto.ctime}분</td>
      <td style="width: 15%" class="text-center">${dto.cprice}원</td>
    </tr>  
   </c:forEach>
  </tbody>
</table>
	
	
<%@ include file="include/footer.jsp" %>	
</body>
</html>
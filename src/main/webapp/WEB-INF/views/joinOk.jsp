<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>JoinOk</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mymember.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<%@ include file="include/header.jsp" %>
<body>
<center>
  <table  width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="500" bgcolor="#F8F9FA" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               			<%	
               				int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
               			
               				if(checkId == 1){
               			
               			%>
	               			<script language="JavaScript">
	               				alert("입력하신 아이디는 이미 사용중입니다. 다른 아이디를 입력하세요");
	               				history.go(-1)
	               			</script>
               			<%
               				} 
               			%>
               			
               			<tr>
               				<td class="td-type02">
               					<b>${mname}</b>님 회원 가입을 축하드립니다!<br>
               					가입하신 아이디는 <b>${mid}</b> 입니다.
               				</td>
               			</tr>
               		</table>  
		        </td>
            </tr>        
         </table>
</center>
<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">티켓월드(주) &copy; WorldTicket All rights Reserved</p>
    <p class="mb-0">TEL : 031-1234-1234 Email : <a href="mailto:shcnu16@gmail.com">shcnu16@gmail.com</a></a>.</p>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	

</body>
</html>
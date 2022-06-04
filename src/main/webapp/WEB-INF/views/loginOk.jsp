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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<%@ include file="include/header.jsp" %>
<body>

  <table  width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="500" bgcolor="#F8F9FA" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               			<%
               				int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
               				int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
               				
               				if(checkId == 0){
               			
               			%>
	               			<script language="JavaScript">
	               				alert("입력하신 아이디는 존재하지 않는 아이디입니다.아이디를 확인해 주세요.");
	               				history.go(-1)
	               			</script>
               			<%
               				} else if(checkPw == 0){
               			%>
               				<script language="JavaScript">
	               				alert("비밀번호가 일치하지않습니다. 다시 확인해 주세요");
	               				history.go(-1)
	               			</script>
	               		<%
	               			} else {
	               				session.setAttribute("ValidMem","yes");
	               			}
	               		%>	
               			
               			<tr>
               				<td class="td-type02">
               					<b>${mname}</b>님 안녕하세요.<br>
               					아이디 <b>${mid}</b>로 로그인에 성공하셨습니다.
               				</td>
               			</tr>
               		</table>  
		        </td>
            </tr>        
         </table>

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
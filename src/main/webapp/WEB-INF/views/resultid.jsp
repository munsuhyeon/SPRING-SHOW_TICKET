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
<title>resultid</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<body>
<%@ include file="include/header.jsp" %>

<table  width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="500" bgcolor="#F8F9FA" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               			<form action="resultid" method="post">
               				<tr><td align="center"><h5>내 아이디</h5><hr></td></tr>
               				<tr><td>&nbsp;</td></tr>
               				
               				<tr><td align="center"><h5>${memberDto.mid}</h5></td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				  <td>
	               				  <input type="button" value="로그인하기" class="btn btn-warning" onclick="javascript:window.location='login'">&nbsp;&nbsp;&nbsp;
	               				  <input type="button" value="비밀번호 찾기" class="btn btn-warning" onclick="javascript:window.location='searchpw'"> 
               				  </td>
               				</tr>
               			</form>
               		</table>  
		        </td>
            </tr>        
         </table>
<%@ include file="include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>
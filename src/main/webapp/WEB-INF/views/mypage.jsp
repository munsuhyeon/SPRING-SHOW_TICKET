<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	
%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>mypage</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
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
               			<form action="infoModifyOk" method="post" name="reg_frm">
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td><input type="button" value="내정보 수정" class="btn btn-warning" onclick="location='infoModify'"></td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td><input type="button" value="예매내역 보기" class="btn btn-warning" onclick="location='reservelist'"></td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               			</form>
               		</table>  
		        </td>
            </tr>        
         </table>

<%@ include file="include/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>
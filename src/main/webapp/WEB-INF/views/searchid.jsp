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
<title>searchid</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<script type="text/javascript">
	function infoConfirm(){
		 if(document.reg_frm.name.value.length == 0) {
		      alert("이름은 필수사항입니다.");
		      reg_frm.name.focus();
		      return;
		   }
		   
		   if(document.reg_frm.email.value.length == 0) {
		      alert("이메일은 필수사항입니다.");
		      reg_frm.email.focus();
		      return;
		   }
		   document.reg_frm.submit();
	}
</script>
</head>
<body>
<%@ include file="include/header.jsp" %>

<table  width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="500" bgcolor="#F8F9FA" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               			<form action="resultid" method="post" name="reg_frm">
               				<tr><td><h5>아이디 찾기</h5><hr></td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td>이름&nbsp;&nbsp;</td>
               				<td><input id="input01" type="text" name="name"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td>이메일&nbsp;&nbsp;</td>
               				<td><input id="input01" type="text" name="email"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td colspan="2" align="center">
               				<input id="button01" class="btn btn-warning" type="button" value="아이디 찾기" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               				<input id="button01" class="btn btn-warning" type="button" value="취소"  onclick="javascript:window.location='index'">
               				</td>
               				</tr>
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
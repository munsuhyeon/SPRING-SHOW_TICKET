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
<title>InfoModify</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/infomodify.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mymember.js"></script>
<style>
html,body{
height:100%;
width:100%;
}
</style>
</head>
<%@ include file="include/header.jsp" %>
<body>

<table height="80%" width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="100%" bgcolor="#F8F9FA" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               			<form action="infoModifyOk" method="post" name="reg_frm">
               				
               				<tr>
               				<td class="td-type01">아이디</td>
               				<td><input id="input01" type="text" name="id" value="${memberDto.mid}" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">비밀번호</td>
               				<td><input id="input01" type="password" name="pw"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">비밀번호 확인</td>
               				<td><input id="input01" type="password" name="pw_check"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">이름</td>
               				<td><input id="input01" type="text" name="name" value="${memberDto.mname }"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">이메일</td>
               				<td><input id="input01" type="text" name="email" value="${memberDto.memail }"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">전화번호</td>
               				<td><input id="input01" type="text" name="phone" value="${memberDto.mphone}"></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">가입일</td>
               				<td><input id="input01" type="text" name="date" value="${memberDto.mdate}" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td colspan="2" align="center">
               				<input id="button01" class="btn btn-warning" type="button" value="정보수정"  onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
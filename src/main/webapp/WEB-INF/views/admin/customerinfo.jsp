<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<title>customerinfo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/infomodify.css">
<style type="text/css">
html,body{
height:100%;
width:100%;
}
.wrapper{
padding:1em;
height:100%;
width:100%;
}
.left{
height:100%;
width:20%;
float:left;
}
.right{
height:100%;
width:78%;
float:right;
}
</style>
</head>
<body>
<div class="wrapper">

<div class="left">
	<div id="sidemenu" class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="height:100%">
    		<class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
     	    <svg class="bi me-2" width="40" height="32"></svg>
      		<span class="fs-4">관리자</span>
		    <br><br>
		    
			    <ul class="nav nav-pills flex-column mb-auto">
			      <li class="nav-item">
			        <a href="admin_customer" class="nav-link link-dark" aria-current="page">
			          <svg class="admin_customer" width="16" height="16"></svg>
			          회원정보
			        </a>
			      </li>
			      <li>
			        <a href="admin_cicboard" class="nav-link link-dark">
			          <svg class="admin_cicboard" width="16" height="16"></svg>
			          고객센터
			        </a>
			      </li>
			      <li>
			        <a href="admin_reservelist" class="nav-link link-dark">
			          <svg class="admin_reservelist" width="16" height="16"></svg>
			          예매현황
			        </a>
			      </li>
			      <li>
			        <a href="admin_register" class="nav-link link-dark">
			          <svg class="admin_register" width="16" height="16"></svg>
			          공연등록
			        </a>
			      </li>
			      <li>
			        <a href="admin_concertlist" class="nav-link link-dark">
			          <svg class="admin_concertlist" width="16" height="16"></svg>
			          공연리스트
			        </a>
			      </li>
			    </ul>
		    <div class="dropdown">
		    	<hr style="width: 250px;">
		      	<a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="/resources/img/admin.png" alt="" width="32" height="32" class="rounded-circle me-2">
		        <strong>admin</strong>
		      	</a>
		     	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
			        <li><a class="dropdown-item" href="index">홈페이지</a></li>
			        <li><a class="dropdown-item" href="logout">로그아웃</a></li>
		      	</ul>
		    </div><!-- dropdown -->
		</div>
</div><!--  left -->

<div class="right">
	<h2 align="center">회원 정보</h2><hr>
	<table  width="100%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               	<td height="100%" align="center">
               		<table border="0" cellspacing="0" cellpadding="10">
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">아이디</td>
               				<td><input id="input01" type="text" name="id" value="${customerinfo.mid}" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">이름</td>
               				<td><input id="input01" type="text" name="name" value="${customerinfo.mname }" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">이메일</td>
               				<td><input id="input01" type="text" name="email" value="${customerinfo.memail }" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">전화번호</td>
               				<td><input id="input01" type="text" name="phone" value="${customerinfo.mphone}" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td class="td-type01">가입일</td>
               				<td><input id="input01" type="text" name="date" value="${customerinfo.mdate}" readonly></td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr>
               				<td colspan="2" align="center">
               				<input id="button01" class="btn btn-warning" type="button" value="닫기"  onclick="javascript:window.location='admin_customer'">
               				</td>
               				</tr>
               				<tr><td>&nbsp;</td></tr>
               				<tr><td>&nbsp;</td></tr>
               		</table>  
		        </td>
            </tr>        
         </table>
	
</div><!-- right -->

</div><!-- wrapper -->
</body>
</html>
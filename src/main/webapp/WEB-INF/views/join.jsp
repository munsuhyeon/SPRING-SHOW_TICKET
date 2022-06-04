<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-datection" content="telephone=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Join</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mymember.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css">
</head>
<body>
	<div id="wrapper"><!-- wrapper -->
		<div id="header"><!-- content -->
			<img src="<c:url value="/resources/img/mainlogo.png"/>">
		</div>
		
		<div id="content">
		
		<form action="joinOk" method="post" name="reg_frm">
				
			<div class="mb-3">
	  			<label for="id">아이디</label>
	  			<input type="text" class="form-control" name="id" id="id">
	  			
			</div>
			
			<div class="mb-3">
	  			<label for="pw">비밀번호</label>
	  			<input type="password" class="form-control" id="pw" name="pw">
	  			
			</div>
				
			<div class="mb-3">
	  			<label for="pw_check">비밀번호 확인</label>
	  			<input type="password" class="form-control" id="pw_check" name="pw_check">
	  				
			</div>		
		
			<div class="mb-3">
	  			<label for="name">이름</label>
	  			<input type="email" class="form-control" id="name" name="name">		
			</div>
				
			<div class="mb-3">
	  			<label for="email">이메일</label>
	  			<input type="email" class="form-control" name="email">  			
			</div>
					
			<div class="mb-3">
	  			<label for="phone">전화번호</label>
	  			<input type="email" class="form-control" name="phone" placeholder=" - 없이 입력해주세요">	  			
			</div>
				
		<div class="btn_area">
			<input type="button" class="btn btn-primary btn-lg" id="btn" value="가입하기" onclick="infoConfirm()">
		</div>
		
		</form>
		</div><!-- content -->
	</div><!-- wrapper -->
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	

</body>
</html>
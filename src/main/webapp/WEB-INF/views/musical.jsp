<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>musical</title>
<script> 
var seats = []; 
for (var i=1; i<11; i++) { 
   seats[i] = false; 
} 
function reserve(bValue) { 
   var msg = " "; 
   var seatNo = document.getElementById("sNo").value; 
   seatNo = Number(seatNo) - 1; 
   if(bValue) { 
      if(seats[seatNo]) { 
         msg = seatNo+1 + "번 좌석은 이미 예약되었습니다."; 
         } else { 
         seats[seatNo] = true; 
         showSeatColor(bValue, seatNo+1); 
      } 
      } else { 
      if(!seats[seatNo]) { 
         msg = seatNo+1 + "좌석은 예약이 없습니다.."; 
         } else { 
         seats[seatNo] = false; 
         showSeatColor(bValue, seatNo+1); 
      } 
   } 
   var dMsg = document.getElementById("div_msg"); 
   dMsg.innerHTML = msg; 
} 
function showSeatColor(bValue, seatNo) { 
   var seatld = document.getElementById("s"+seatNo); 
   if(bValue) 
   seatld.style.backgroundColor = 'cyan'; 
   else 
   seatld.style.backgroundColor = 'white'; 
} 
</script> 
</head>
<body>
<h2> 버스 좌석 예약 </h2> 
<input type="checkbox" name="sNo" value="1">
<input type="checkbox" name="sNo" value="2">
<input type="checkbox" name="sNo" value="3">
<input type="checkbox" name="sNo" value="4">
<input type="checkbox" name="sNo" value="5">
<input type="checkbox" name="sNo" value="6">
<input type="checkbox" name="sNo" value="7">
<input type="checkbox" name="sNo" value="8">
<input type="checkbox" name="sNo" value="9">
<input type="checkbox" name="sNo" value="10">(1~10까지의 수를 입력하세요.) 
<input type="button" value="예약" onclick="reserve(true)"> 
<input type="button" value="취소" onclick="reserve(false)"> 
<p>메시지 
<div id="div_msg">...</div></p> 
<p>좌석 배치도 
<section> 
<table border="1" cellspacing="0" width="100" > 
<tr> 
<td id="s1" width="50%" align="center">1</td> <td id="s2" align="center">2</td> 
</tr> 
<tr> 
<td id="s3" width="50%" align="center">3</td> <td id="s4" align="center">4</td> 
</tr> 
<tr> 
<td id="s5" width="50%" align="center">5</td> <td id="s6" align="center">6</td> 
</tr> 
<tr> 
<td id="s7" width="50%" align="center">7</td> <td id="s8" align="center">8</td> 
</tr> 
<tr> 
<td id="s9" width="50%" align="center">9</td> <td id="s10" align="center">10</td> 
</tr> 
</table> 
</section> 
</body>

</html>
/**
 * 
 */
 
function boardConfirm() {

   if(document.reg_frm.bid.value.length == 0) {
      alert("아이디는 필수 입력사항입니다.");
      reg_frm.bid.focus();
      return;
   }
   
   if(document.reg_frm.btitle.value.length == 0) {
      alert("제목은 필수사항입니다.");
      reg_frm.btitle.focus();
      return;
   }
   
   if(document.reg_frm.bcontent.value.length < 4 ) {
      alert("최소 10자이상 입력해주세요");
      reg_frm.bcontent.focus();
      return;
   }

   document.reg_frm.submit();
}



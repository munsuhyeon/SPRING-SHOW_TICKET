package com.suhyeon.profile_web.dao;

import java.util.ArrayList;
import java.util.List;

import com.suhyeon.profile_web.dto.BoardDto;
import com.suhyeon.profile_web.dto.ConcertDto;
import com.suhyeon.profile_web.dto.MemberDto;
import com.suhyeon.profile_web.dto.ReserveDto;

public interface IDao {
	
	//Member 테이블 조작 dao
		public void joinDao(String mid, String mpw, String mname, String memail, String mphone); // 회원가입
		public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
		public int checkIdDao(String mid); // 아이디 존재 여부 체크
		public int checkPwDao(String mid, String mpw); // 아이디와 비밀번호 일치여부 확인
		public void memberInfoModifyOkDao(String mpw, String mname, String memail, String mphone, String mid); // 회원정보 수정
		
		//cic_board 조작 dao
		public ArrayList<BoardDto> listDao(); // 리스트 가져오기
		public void writeDao(String bid, String btitle, String bcontent);// 글쓰기
		public BoardDto viewDao(String bnum);// 게시판 글 보기
		public void deleteDao(String bnum);//글 지우기
		public void modifyDao(String bid, String btitle, String bcontent, String bnum);//글 수정
		public void boardhit(String bnum);//게시판 조회수
		//public void replyDao();//덧글쓰기
		
		//index 공연정보 테이블
		public ArrayList<ConcertDto> indexDao();
		public ConcertDto detailDao(String cnum);
		
}


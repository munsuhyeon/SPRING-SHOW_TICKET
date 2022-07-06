package com.suhyeon.profile_web.dao;

import java.util.ArrayList;

import com.suhyeon.profile_web.dto.ConcertDto;
import com.suhyeon.profile_web.dto.MemberDto;
import com.suhyeon.profile_web.dto.ReserveDto;

public interface ADao {
	
	public ArrayList<MemberDto> customerlistDao();
	public MemberDto customerinfoDao(String mid);
	public void write_replyDao(String bnum, String btitle, String bcontent, String breply); // 답변쓰기 
	public ArrayList<ReserveDto> reservelistDao(); //공연예매리스트
	public void admindeleteDao(String bnum); //환불요청한 데이터 삭제
	public void registerDao(String ctitle, String cplace, String cstartdate, String cenddate, String ctime, String pic, String cprice); //공연등록
	public int checkRegister(String ctitle); //공연중복등록 체크
	public ArrayList<ConcertDto> concertlistDao();//공연정보 리스트
	public void concertdeleteDao(String cnum); //공연 삭제
	public void reservedeleteDao(String btitle);
}

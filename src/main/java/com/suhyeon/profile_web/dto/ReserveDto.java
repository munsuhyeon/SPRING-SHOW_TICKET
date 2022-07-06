package com.suhyeon.profile_web.dto;

import java.io.Serializable;
import java.util.Date;

public class ReserveDto {
	private String bnum;
	private String bid; //구매한 아이디
	private String btitle; // 공연제목
	private String bplace; //공연장소
	private Date bdate; //예약날짜
	private String btime; //공연 시간
	private int bprice; //티켓 가격
	private int bcount; //선택한 표 갯수
	private String bpic; //예매한 공연 이미지
	private String bstate;
	public ReserveDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReserveDto(String bnum, String bid, String btitle, String bplace, Date bdate, String btime, int bprice, int bcount, String bpic, String bstate) {
		super();
		this.bnum = bnum;
		this.bid = bid;
		this.btitle = btitle;
		this.bplace = bplace;
		this.bdate = bdate;
		this.btime = btime;
		this.bprice = bprice;
		this.bcount = bcount;
		this.bpic = bpic;
		this.bstate = bstate;
	}
	
	public String getBnum() {
		return bnum;
	}
	public void setBnum(String bnum) {
		this.bnum = bnum;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBplace() {
		return bplace;
	}
	public void setBplace(String bplace) {
		this.bplace = bplace;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public int getBprice() {
		return bprice;
	}
	public void setBprice(int bprice) {
		this.bprice = bprice;
	}
	public int getbcount() {
		return bcount;
	}
	public void setbcount(int bcount) {
		this.bcount = bcount;
	}
	public String getBpic() {
		return bpic;
	}
	public void setBpic(String bpic) {
		this.bpic = bpic;
	}
	public String getBstate() {
		return bstate;
	}
	public void setBstate(String bstate) {
		this.bstate = bstate;
	}
	public int getBcount() {
		return bcount;
	}
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}
	
	
}

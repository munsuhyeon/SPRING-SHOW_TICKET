package com.suhyeon.profile_web.dto;

import java.io.Serializable;
import java.util.Date;

public class ReserveDto {
	
	private String bid; //구매한 아이디
	private String btitle; // 공연제목
	private String bplace; //공연장소
	private Date bdate; //예약날짜
	private String btime; //공연 시간
	private String bprice; //티켓 가격
	private String bseat; //선택한 좌석
	
	public ReserveDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReserveDto(String bid, String btitle, String bplace, Date bdate, String btime, String bprice, String bseat) {
		super();
		this.bid = bid;
		this.btitle = btitle;
		this.bplace = bplace;
		this.bdate = bdate;
		this.btime = btime;
		this.bprice = bprice;
		this.bseat = bseat;
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
	public String getBprice() {
		return bprice;
	}
	public void setBprice(String bprice) {
		this.bprice = bprice;
	}
	public String getBseat() {
		return bseat;
	}
	public void setBseat(String bseat) {
		this.bseat = bseat;
	}
	
	
}

package com.suhyeon.profile_web.dto;

import java.sql.Timestamp;

public class BoardDto {
	private int bnum;//게시판번호
	private String bid;//게시판 글쓴사람 아이디
	private String bname;//게시판 글쓴사람 이름
	private String btitle;//글 제목
	private String bcontent;//글 내용
	private Timestamp bdate;//게시판에 글쓴 날짜(시간)
	private int bhit; //조회수
	private String breply;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int bnum, String bid, String bname, String btitle, String bcontent, Timestamp bdate,
			int bhit, String breply) {
		super();
		this.bnum = bnum;
		this.bid = bid;
		this.bname = bname;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.breply = breply;
		this.bhit = bhit;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public Timestamp getBdate() {
		return bdate;
	}

	public void setBdate(Timestamp bdate) {
		this.bdate = bdate;
	}

	public String getBreply() {
		return breply;
	}

	public void setBreply(String breply) {
		this.breply = breply;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}

	
}

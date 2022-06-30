package com.suhyeon.profile_web.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConcertDto {
	
	private int cnum;//공연번호
	private String ctitle;//공연제목
	private String cplace;//공연장소
	private Date cstartdate;//공연시작날짜
	private Date cenddate;//공연종료날짜
	private String ctime;//공연시간
	private String pic;//공연이미지주소
	private String img1;//공연정보이미지주소
	private String img2;//공연정보이미지주소
	private String img3;//공연정보이미지주소
	private String img4;//공연정보이미지주소
	private String img5;//공연정보이미지주소
	private String cprice;//공연 가격
	public ConcertDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ConcertDto(int cnum, String ctitle, String cplace, Date cstartdate, Date cenddate, String ctime,
			String pic, String img1, String img2, String img3, String img4, String img5, String cprice) {
		super();
		this.cnum = cnum;
		this.ctitle = ctitle;
		this.cplace = cplace;
		this.cstartdate = cstartdate;
		this.cenddate = cenddate;
		this.ctime = ctime;
		this.pic = pic;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.cprice = cprice;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCplace() {
		return cplace;
	}
	public void setCplace(String cplace) {
		this.cplace = cplace;
	}
	public Date getcstartdate() {
		return cstartdate;
	}
	public void setcstartdate(Date cstartdate) {
		this.cstartdate = cstartdate;
	}
	public Date getcenddate() {
		return cenddate;
	}
	public void setcenddate(Date cenddate) {
		this.cenddate = cenddate;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public String getCprice() {
		return cprice;
	}
	public void setCprice(String cprice) {
		this.cprice = cprice;
	}
	
	
}

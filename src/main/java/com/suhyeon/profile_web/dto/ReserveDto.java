package com.suhyeon.profile_web.dto;

import java.io.Serializable;

public class ReserveDto implements Serializable {
	
	private String id; //계정 아이디
	private int reserveSequence; //예약 시퀀스
	private String title; // 공연제목
	private String runningTime; //공연시간
	private String concertDate; //공연날짜
	private String reserveDate; //예약날짜
	private String ticketNumber; //티켓넘버
	private String selectedSeat; //선택한 좌석
	
	private PayDto payDto;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getReserveSequence() {
		return reserveSequence;
	}

	public void setReserveSequence(int reserveSequence) {
		this.reserveSequence = reserveSequence;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getrunningTime() {
		return runningTime;
	}

	public void setrunningTime(String runningTime) {
		this.runningTime = runningTime;
	}

	public String getConcertDate() {
		return concertDate;
	}

	public void setConcertDate(String concertDate) {
		this.concertDate = concertDate;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(String ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public String getSelectedSeat() {
		return selectedSeat;
	}

	public void setSelectedSeat(String selectedSeat) {
		this.selectedSeat = selectedSeat;
	}

	public ReserveDto(String id, int reserveSequence, String title, String runningTime, String concertDate,
			String reserveDate, String ticketNumber, String selectedSeat) {
		super();
		this.id = id;
		this.reserveSequence = reserveSequence;
		this.title = title;
		this.runningTime = runningTime;
		this.concertDate = concertDate;
		this.reserveDate = reserveDate;
		this.ticketNumber = ticketNumber;
		this.selectedSeat = selectedSeat;
	}

	public ReserveDto(String id, int reserveSequence, String title, String runningTime, String concertDate,
			String reserveDate, String ticketNumber, String selectedSeat, PayDto payDto) {
		super();
		this.id = id;
		this.reserveSequence = reserveSequence;
		this.title = title;
		this.runningTime = runningTime;
		this.concertDate = concertDate;
		this.reserveDate = reserveDate;
		this.ticketNumber = ticketNumber;
		this.selectedSeat = selectedSeat;
		this.payDto = payDto;
	}
	@Override
	public String toString() {
		return "ReserveDto [id=" + id + ", reserveSequence=" + reserveSequence + ",title=" + title
				+ ",runningTile=" + runningTime + ",concertDate=" + concertDate + ",reserveDate=" + reserveDate
				+ ",ticketNumber=" + ticketNumber + ",selectedSeat=" + selectedSeat + "]";
	}
	
	
}

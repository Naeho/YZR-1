package net.nigne.yzrproject.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reservation_list")
public class Reservation_listVO {
	
	@Id
	@Column(name="reservation_code")
	String reservation_code;
	@Column(name="member_id")
	String member_id;
	@Column(name="movie_name")
	String movie_name;
	@Column(name="theater_name")
	String theater_name;
	@Column(name="plex_number")
	String plex_number;
	@Column(name="start_time")
	String start_time;
	@Column(name="ticket_cnt")
	int ticket_cnt;
	@Column(name="view_seat")
	String view_seat;
	@Column(name="pay")
	String pay;
	@Column(name="pay_method")
	String pay_method;
	@Column(name="reservation_date")
	String reservation_date;
	
	public String getReservation_code() {
		return reservation_code;
	}
	public void setReservation_code(String reservation_code) {
		this.reservation_code = reservation_code;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getTheater_name() {
		return theater_name;
	}
	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}
	public String getPlex_number() {
		return plex_number;
	}
	public void setPlex_number(String plex_number) {
		this.plex_number = plex_number;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getTicket_cnt() {
		return ticket_cnt;
	}
	public void setTicket_cnt(int ticket_cnt) {
		this.ticket_cnt = ticket_cnt;
	}
	public String getView_seat() {
		return view_seat;
	}
	public void setView_seat(String view_seat) {
		this.view_seat = view_seat;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public String getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}
	
}
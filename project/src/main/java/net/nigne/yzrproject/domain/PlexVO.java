package net.nigne.yzrproject.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="plex")
public class PlexVO {
	
	@Id
	@Column(name="plex_number")
	String plex_number;
	@Column(name="plex_type")
	String plex_type;
	@Column(name="plex_seat_cnt")
	int plex_seat_cnt;
	@Column(name="theater_id")
	String theater_id;
	@Column(name="movie_id")
	String movie_id;
	
	public String getPlex_number() {
		return plex_number;
	}
	public void setPlex_number(String plex_number) {
		this.plex_number = plex_number;
	}
	public String getPlex_type() {
		return plex_type;
	}
	public void setPlex_type(String plex_type) {
		this.plex_type = plex_type;
	}
	public int getPlex_seat_cnt() {
		return plex_seat_cnt;
	}
	public void setPlex_seat_cnt(int plex_seat_cnt) {
		this.plex_seat_cnt = plex_seat_cnt;
	}
	public String getTheater_id() {
		return theater_id;
	}
	public void setTheater_id(String theater_id) {
		this.theater_id = theater_id;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	
}
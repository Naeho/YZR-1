package net.nigne.yzrproject.service;

import java.util.List;

import net.nigne.yzrproject.domain.TheaterVO;

public interface TheaterService {
	
	public List<TheaterVO> getList(String theater);
	public List<Long> getLocalTheaterNum();
	public List<TheaterVO> getLocal();
	public String getTheaterId(String theaterName);
	
}

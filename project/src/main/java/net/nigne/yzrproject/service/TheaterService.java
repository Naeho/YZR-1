package net.nigne.yzrproject.service;

import java.util.List;

import net.nigne.yzrproject.domain.TheaterVO;

public interface TheaterService {
	
	public List<TheaterVO> getList();
	public List<TheaterVO> getLocalTheaterNum();
	public List<TheaterVO> getLocal();
	
}

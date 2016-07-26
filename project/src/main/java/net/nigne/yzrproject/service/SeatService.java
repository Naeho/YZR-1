package net.nigne.yzrproject.service;

import java.util.List;

import net.nigne.yzrproject.domain.SeatVO;

public interface SeatService {
	
	public List<SeatVO> getList(String plexNum);
	public List<SeatVO> getIndex(String plexNum);
	
}

package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.domain.TheaterVO;

public interface SeatDAO {
	
	public List<SeatVO> getList(String plexNum);
	public List<SeatVO> getIndex(String plexNum);
	
}
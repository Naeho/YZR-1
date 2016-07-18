package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.TheaterVO;

public interface TheaterDAO {
	
	public List<TheaterVO> getList(String theater);
	public List<Long> getLocalTheaterNum();
	public List<TheaterVO> getLocal();
	public String getTheaterId(String theaterName);
	
}
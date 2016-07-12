package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.TheaterVO;

public interface TheaterDAO {
	
	public List<TheaterVO> getList();
	public List<TheaterVO> getLocalTheaterNum();
	public List<TheaterVO> getLocal();
	
}
package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.TimetableVO;

public interface TimetableDAO {
	
	public List<TimetableVO> getList(String movie, String theater, String date, String plex_number);
	public List<String> getPlexNum(String movie, String theater, String date);
	
}
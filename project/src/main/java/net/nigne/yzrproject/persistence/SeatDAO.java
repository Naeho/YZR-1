package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.domain.TheaterVO;

public interface SeatDAO {
	
	public List<SeatVO> getList(String plexNum);
	public List<SeatVO> getIndex(String plexNum);
	public void updateReservation(int SeatNo);
	
	public List<Integer> getPrimary(String theaterId, String plexNum, String seat1, String seat2, String seat3, 
								 String seat4, String seat5, String seat6, String seat7, String seat8);
}
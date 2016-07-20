package net.nigne.yzrproject.persistence;

import java.util.List;

import net.nigne.yzrproject.domain.Reservation_listVO;

public interface Reservation_ListDAO {
	public List<Reservation_listVO> getList();
}

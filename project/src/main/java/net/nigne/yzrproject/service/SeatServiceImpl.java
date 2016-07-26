package net.nigne.yzrproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.persistence.SeatDAO;

@Service
public class SeatServiceImpl implements SeatService {
	
	@Autowired
	private SeatDAO dao;

	@Override
	public List<SeatVO> getList(String plexNum) {
		// TODO Auto-generated method stub
		return dao.getList(plexNum);
	}

	@Override
	public List<SeatVO> getIndex(String plexNum) {
		// TODO Auto-generated method stub
		return dao.getIndex(plexNum);
	}

}

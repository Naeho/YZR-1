package net.nigne.yzrproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.nigne.yzrproject.domain.TimetableVO;
import net.nigne.yzrproject.persistence.TimetableDAO;

@Service
public class TimetableServiceImpl implements TimetableService {
	
	@Autowired
	private TimetableDAO dao;

	@Override
	public List<TimetableVO> getList() {
		// TODO Auto-generated method stub
		return dao.getList();
	}

}

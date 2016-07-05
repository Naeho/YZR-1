package net.nigne.yzrproject.service;

import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.nigne.yzrproject.domain.EmpVO;
import net.nigne.yzrproject.persistence.EmpDAO;

@Transactional
@Service
public class EmpServiceImpl implements EmpService {
	@Inject
	private EmpDAO dao;
	
	@Transactional(readOnly=true)
	@Override
	public List<EmpVO> getList() {
		// TODO Auto-generated method stub
		return dao.getList();
	}
	@Transactional(rollbackFor={Exception.class})
	@Override
	public void empInsert(int no) throws Exception{
		dao.empInsert(no);
	}
}
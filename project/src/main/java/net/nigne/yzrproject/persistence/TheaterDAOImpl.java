package net.nigne.yzrproject.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.TheaterVO;

@Repository
public class TheaterDAOImpl implements TheaterDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<TheaterVO> getList() {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<TheaterVO> mainQuery = cb.createQuery(TheaterVO.class);
		Root<TheaterVO> mainQueryroot = mainQuery.from(TheaterVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot);
		mainQuery.where(cb.equal(mainQueryroot.get("theater_area"), "서울"));
		
		TypedQuery<TheaterVO> tq = entityManager.createQuery(mainQuery);
		List<TheaterVO> list = tq.getResultList();
		
		return list;
	}

	@Override
	public List<TheaterVO> getLocalTheaterNum() {
		int code = 1;

		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<TheaterVO> mainQuery = cb.createQuery(TheaterVO.class);
		Root<TheaterVO> mainQueryroot = mainQuery.from(TheaterVO.class);
		
		mainQuery.select(mainQueryroot);
		mainQuery.where(cb.equal(mainQueryroot.get("area_code"), code));
		
		TypedQuery<TheaterVO> tq = entityManager.createQuery(mainQuery);
		List<TheaterVO> list = tq.getResultList();
	
		return list;
	}

	@Override
	public List<TheaterVO> getLocal() {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<TheaterVO> mainQuery = cb.createQuery(TheaterVO.class);
		Root<TheaterVO> mainQueryroot = mainQuery.from(TheaterVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot.get("theater_area")).distinct(true);
		
		TypedQuery<TheaterVO> tq = entityManager.createQuery(mainQuery);
		List<TheaterVO> list = tq.getResultList();
		
		return list;
	}

}

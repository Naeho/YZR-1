package net.nigne.yzrproject.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.PlexVO;
import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.domain.TheaterVO;

@Repository
public class SeatDAOImpl implements SeatDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<SeatVO> getList(String plexNum) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<SeatVO> mainQuery = cb.createQuery(SeatVO.class);
		Root<SeatVO> mainQueryroot = mainQuery.from(SeatVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot);
		mainQuery.where(cb.equal(mainQueryroot.get("plex_number"), plexNum));
		
		TypedQuery<SeatVO> tq = entityManager.createQuery(mainQuery);
		List<SeatVO> list = tq.getResultList();
		
		return list;
	}
	
	@Override
	public List<SeatVO> getIndex(String plexNum) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<SeatVO> mainQuery = cb.createQuery(SeatVO.class);
		Root<SeatVO> mainQueryroot = mainQuery.from(SeatVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot.get("seat_index")).distinct(true);
		
		TypedQuery<SeatVO> tq = entityManager.createQuery(mainQuery);
		List<SeatVO> list = tq.getResultList();
		
		return list;
	}

}

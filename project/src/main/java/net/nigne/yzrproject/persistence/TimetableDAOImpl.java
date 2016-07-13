package net.nigne.yzrproject.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.TimetableVO;

@Repository
public class TimetableDAOImpl implements TimetableDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<TimetableVO> getList() {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<TimetableVO> mainQuery = cb.createQuery(TimetableVO.class);
		Root<TimetableVO> mainQueryroot = mainQuery.from(TimetableVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot);
		System.out.println("1111111111111111111111111111111111111111111111111111111111111111111111");
		mainQuery.where(cb.equal(mainQueryroot.get("movie_id"), 1), cb.equal(mainQueryroot.get("theater_id"), 1), cb.equal(mainQueryroot.get("plex_number"), 1));
		System.out.println("2222222222222222222222222222222222222222222222222222222222222222222222222");
		
		TypedQuery<TimetableVO> tq = entityManager.createQuery(mainQuery);
		System.out.println("3333333333333333333333333333333333333333333333333333333333333333333333333333333");
		List<TimetableVO> list = tq.getResultList();
		System.out.println(list.size());
		
		return list;
	}

}

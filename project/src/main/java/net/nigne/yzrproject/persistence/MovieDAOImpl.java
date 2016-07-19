package net.nigne.yzrproject.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.MovieVO;
import net.nigne.yzrproject.domain.PlexVO;

@Repository
public class MovieDAOImpl implements MovieDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<MovieVO> getList(String order) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<MovieVO> mainQuery = cb.createQuery(MovieVO.class);
		Root<MovieVO> mainQueryroot = mainQuery.from(MovieVO.class);
		
		if("reservation_rate".equals(order)) {
			mainQuery.select(mainQueryroot).orderBy(cb.desc(mainQueryroot.get("reservation_rate")));
			//System.out.println("!@!#!@@#$#@!$");
		} else {
			mainQuery.select(mainQueryroot).orderBy(cb.asc(mainQueryroot.get("title")));
			//System.out.println("ddddddddddddddddddfd : " + order);
		}
		
		TypedQuery<MovieVO> tq = entityManager.createQuery(mainQuery);
		List<MovieVO> list = tq.getResultList();
		
		//System.out.println("!111111111111111111111111 : " + list.get(0).getReservation_rate());
		
		return list;
	}

	@Override
	public List<MovieVO> getMovieId(String movieName) {
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<MovieVO> mainQuery = cb.createQuery(MovieVO.class);
		Root<MovieVO> mainQueryroot = mainQuery.from(MovieVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot);
		mainQuery.where(cb.equal(mainQueryroot.get("title"), movieName));
		
		TypedQuery<MovieVO> tq = entityManager.createQuery(mainQuery);
		List<MovieVO> list = tq.getResultList();
		
		System.out.println("11111111111111111111111111111111111 : " + list.get(0).getMovie_id());
		
		return list;
	}

}

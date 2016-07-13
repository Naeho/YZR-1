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

@Repository
public class MovieDAOImpl implements MovieDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<MovieVO> getList() {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<MovieVO> mainQuery = cb.createQuery(MovieVO.class);
		Root<MovieVO> mainQueryroot = mainQuery.from(MovieVO.class);
		
		mainQuery.select(mainQueryroot);
		
		TypedQuery<MovieVO> tq = entityManager.createQuery(mainQuery);
		List<MovieVO> list = tq.getResultList();
		
		return list;
	}

}

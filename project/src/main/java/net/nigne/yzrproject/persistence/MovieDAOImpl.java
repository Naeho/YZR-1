package net.nigne.yzrproject.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.EmpVO;
import net.nigne.yzrproject.domain.MovieVO;

@Repository
public class MovieDAOImpl implements MovieDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<MovieVO> getList() {
		// TODO Auto-generated method stub
		CriteriaBuilder cb=entityManager.getCriteriaBuilder();
		CriteriaQuery<MovieVO> cq=cb.createQuery(MovieVO.class);
		Root<MovieVO> root = cq.from(MovieVO.class);
		cq.select(root);
		TypedQuery<MovieVO> tq = entityManager.createQuery(cq);
		List<MovieVO> list = tq.getResultList();
		
		return list;
	}

}

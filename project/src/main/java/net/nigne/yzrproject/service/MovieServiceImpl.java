package net.nigne.yzrproject.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import net.nigne.yzrproject.domain.MovieVO;
import net.nigne.yzrproject.persistence.MovieDAO;

@Transactional
@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	private MovieDAO dao;
	
	@Transactional(readOnly=true)
	@Override
	public List<MovieVO> getList(String order) {
		// TODO Auto-generated method stub
		return dao.getList(order);
	}

	@Override
	public String getMovieId(String movieName) {
		// TODO Auto-generated method stub
		return dao.getMovieId(movieName);
	}

}

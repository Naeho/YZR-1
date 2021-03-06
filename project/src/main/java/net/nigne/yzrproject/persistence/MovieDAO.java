package net.nigne.yzrproject.persistence;

import java.util.List;
import net.nigne.yzrproject.domain.MovieVO;

public interface MovieDAO {
	
	public List<MovieVO> getList(String order);
	public List<MovieVO> getMovieId(String movieName);
	
}
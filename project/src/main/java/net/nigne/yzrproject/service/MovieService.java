package net.nigne.yzrproject.service;

import java.util.List;

import net.nigne.yzrproject.domain.MovieVO;

public interface MovieService {
	
	public List<MovieVO> getList(String order);
	public List<MovieVO> getMovieId(String movieName);
	
}

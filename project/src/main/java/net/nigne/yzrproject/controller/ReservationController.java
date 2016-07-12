package net.nigne.yzrproject.controller;

import java.util.List;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import net.nigne.yzrproject.domain.MovieVO;
import net.nigne.yzrproject.domain.TheaterVO;
import net.nigne.yzrproject.service.MovieService;
import net.nigne.yzrproject.service.TheaterService;

/** 
* @Package  : net.nigne.yzrproject.controller 
* @FileName : HomeController.java 
* @Date     : 2016. 7. 11. 
* @작성자	: 장내호
* @프로그램 	: 설명...
*/
@Controller
public class ReservationController {
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private TheaterService theaterService;

	/** 
	* @Method Name : home  
	* @Method	   : 설명... 
	* @param locale
	* @param model
	* @return
	* @throws Exception 
	*/
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		

		List<MovieVO> movieList = movieService.getList();
		List<TheaterVO> theaterList = theaterService.getList();
		List<TheaterVO> localList = theaterService.getLocal();
		List<TheaterVO> theaterNum = theaterService.getLocalTheaterNum();
		
		int theaternum = theaterNum.size();
		
		System.out.println(theaternum);
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("theaterList", theaterList);
		model.addAttribute("localList", localList);
		model.addAttribute("theaterNum", theaternum);
		
		return "main";
	}
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) throws Exception {
		

		List<MovieVO> movieList = movieService.getList();
		
		model.addAttribute("movieList", movieList);
		
		return "reservation";
	}
	
}
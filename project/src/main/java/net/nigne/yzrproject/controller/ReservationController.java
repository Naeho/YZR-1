package net.nigne.yzrproject.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.nigne.yzrproject.domain.MovieVO;
import net.nigne.yzrproject.domain.PlexVO;
import net.nigne.yzrproject.domain.TheaterVO;
import net.nigne.yzrproject.domain.TimetableVO;
import net.nigne.yzrproject.service.MovieService;
import net.nigne.yzrproject.service.PlexService;
import net.nigne.yzrproject.service.TheaterService;
import net.nigne.yzrproject.service.TimetableService;

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
	
	@Autowired
	private PlexService plexrService;
	
	@Autowired
	private TimetableService timetableService;

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
		
		int timetableNum = 0;

		List<MovieVO> movieList = movieService.getList("reservation_rate");
		List<TheaterVO> theaterList = theaterService.getList("서울");
		List<TheaterVO> localList = theaterService.getLocal();
		List<Long> theaterNum = theaterService.getLocalTheaterNum();
		List<PlexVO> plexList = plexrService.getList();
		List<TimetableVO> timetableList = timetableService.getList();
		System.out.println(timetableList.size());
		
		while(timetableList.size() > timetableNum){
			System.out.println(timetableNum + ":" + timetableList.get(timetableNum).getStart_time());
			timetableNum++;
		}

		
		model.addAttribute("movieList", movieList);
		model.addAttribute("theaterList", theaterList);
		model.addAttribute("localList", localList);
		model.addAttribute("theaterNum", theaterNum);
		model.addAttribute("plexList", plexList);
		model.addAttribute("timetableList", timetableList);
		
		return "main";
	}
	
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) throws Exception {
		

		
		
		return "reservation";
	}
	
	@RequestMapping(value = "/main/movie/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> moviePage(
			@PathVariable("page") String page
			) {
		ResponseEntity<Map<String, Object>> entity = null;
		System.out.println(page);
		
		try{
			List<MovieVO> list = movieService.getList(page);
			
			Map<String, Object> map = new HashMap<>();
			map.put("l", list);
			

			//브라우저로 전송한다
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/main/theater/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> theaterPage(
			@PathVariable("page") String page
			) {
		ResponseEntity<Map<String, Object>> entity = null;
		System.out.println(page);
		
		try{
			List<TheaterVO> list = theaterService.getList(page);
			
			Map<String, Object> map = new HashMap<>();
			map.put("l", list);
			

			//브라우저로 전송한다
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}

}
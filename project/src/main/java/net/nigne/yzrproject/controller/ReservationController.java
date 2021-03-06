package net.nigne.yzrproject.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.nigne.yzrproject.domain.EmpVO;
import net.nigne.yzrproject.domain.MovieVO;
import net.nigne.yzrproject.domain.PlexVO;
import net.nigne.yzrproject.domain.Reservation_listVO;
import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.domain.TheaterVO;
import net.nigne.yzrproject.domain.TimetableVO;
import net.nigne.yzrproject.service.MovieService;
import net.nigne.yzrproject.service.PlexService;
import net.nigne.yzrproject.service.SeatService;
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
	private PlexService plexService;
	
	@Autowired
	private TimetableService timetableService;
	
	@Autowired
	private SeatService seatService;

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
		
		List<MovieVO> movieList = movieService.getList("reservation_rate");
		List<TheaterVO> theaterList = theaterService.getList("서울");
		List<TheaterVO> localList = theaterService.getLocal();
		List<Long> theaterNum = theaterService.getLocalTheaterNum();
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("theaterList", theaterList);
		model.addAttribute("localList", localList);
		model.addAttribute("theaterNum", theaterNum);
				
		return "main";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservaion_get(Locale locale, Model model) throws Exception {
		
		return "reservation";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
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
	
	@RequestMapping(value = "/main/timetable/{movie}/{theater}/{date}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> timetablePage(
			@PathVariable("movie") String movie,
			@PathVariable("theater") String theater,
			@PathVariable("date") String date
			) {
		ResponseEntity<Map<String, Object>> entity = null;
		
		List<MovieVO> movieList = movieService.getMovieId(movie);
		List<TheaterVO> theaterList = theaterService .getTheaterId(theater);
//		List<PlexVO> plexList = 
		
		String movieId = movieList.get(0).getMovie_id();
		String theaterId = theaterList.get(0).getTheater_id();
		
		try{
			List<TimetableVO> timetableList = new ArrayList<>();
			List<String> plexNumList = timetableService.getPlexNum(movieId, theaterId, date);
			List<PlexVO> plexTypeList = new ArrayList<>();
			//timetableService.getList(movieId, theaterId, date);
			
			int plexNumCount = 0;
			int timetableNum = 0;
			
			String plexNum[] = new String[plexNumList.size()];
			
			while(plexNumList.size() > plexNumCount){				
				plexNum[plexNumCount] = plexNumList.get(plexNumCount);
				System.out.println(plexNum[plexNumCount]);
				plexTypeList.addAll(plexService.getList(plexNum[plexNumCount], theaterId));
				timetableList.addAll(timetableService.getList(movieId, theaterId, date, plexNum[plexNumCount]));
				while(timetableList.size() > timetableNum){
					timetableNum++;
				}
				plexNumCount++;
			}
			
			Map<String, Object> map = new HashMap<>();
			map.put("l", timetableList);
			map.put("t", plexTypeList);
			

			//브라우저로 전송한다
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/main/plex/{plexNum}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> PlexPage(
			@PathVariable("plexNum") String plexNum
			) {
		ResponseEntity<Map<String, Object>> entity = null;
		System.out.println(plexNum);
		
		try{
			List<SeatVO> list = seatService.getList(plexNum);
			List<SeatVO> getIndex = seatService.getIndex(plexNum);
			
			Map<String, Object> map = new HashMap<>();
			map.put("l", list);
			map.put("i", getIndex);
			

			//브라우저로 전송한다
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/main/{theaterId}/{plexNum}/seat", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> SeatPage(
			@PathVariable("theaterId") String theaterId,
			@PathVariable("plexNum") String plexNum,
			@RequestParam(value="seat1",required=false) String seat1,
			@RequestParam(value="seat2",required=false) String seat2,
			@RequestParam(value="seat3",required=false) String seat3,
			@RequestParam(value="seat4",required=false) String seat4,
			@RequestParam(value="seat5",required=false) String seat5,
			@RequestParam(value="seat6",required=false) String seat6,
			@RequestParam(value="seat7",required=false) String seat7,
			@RequestParam(value="seat8",required=false) String seat8
			) {

		
		ResponseEntity<Map<String, Object>> entity = null;
		
		try{
			List<Integer> getPrimary = seatService.getPrimary(theaterId, plexNum, seat1, seat2, seat3, seat4, seat5, seat6, seat7, seat8);
			
			int SeatNo = 0;
			String SeatIndex = "";
			int SeatNumber = 0;
			
			for(int i = 0; i < getPrimary.size(); i++){
				SeatNo = getPrimary.get(i);
				seatService.updateReservation(SeatNo);
			}

			List<SeatVO> list = seatService.getList(plexNum);
			List<SeatVO> getIndex = seatService.getIndex(plexNum);
			
			Map<String, Object> map = new HashMap<>();
			map.put("l", list);
			map.put("i", getIndex);
			
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch(Exception e){
			
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}

}
package net.nigne.yzrproject.controller;

import java.util.List;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import net.nigne.yzrproject.domain.EmpVO;
import net.nigne.yzrproject.service.EmpService;

/** 
* @Package  : net.nigne.yzrproject.controller 
* @FileName : HomeController.java 
* @Date     : 2016. 7. 6. 
* @�ۼ���	: ���μ�
* @���α׷� 	: ����...
*/
@Controller
public class HomeController {
	@Autowired
	private EmpService service;

	/** 
	* @Method Name : home  
	* @Method	   : ����... 
	* @param locale
	* @param model
	* @return
	* @throws Exception 
	*/
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		

		List<EmpVO> list=service.getList();
		
		model.addAttribute("list", list);
		
		return "home";
	}
	
}
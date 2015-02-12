package user.controller;

import item.logic.ItemLogic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

// 단순 매핑 페이지이동확인을 위한 컨트롤러 

@Controller
public class MappingController {
	@Autowired
	private ItemLogic itemLogic;

	public void setBoardLogic(ItemLogic itemLogic) {
		this.itemLogic = itemLogic;
	}
	
	//인덱스 매핑
	@RequestMapping("/index.html")
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		//View
		modelAndView.setViewName("index");
		return modelAndView;
		
	}

	//회원가입 매핑
	@RequestMapping("/signup.html")
	public ModelAndView handleRequest2(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		//View
		modelAndView.setViewName("signup");
		return modelAndView;
	}

}

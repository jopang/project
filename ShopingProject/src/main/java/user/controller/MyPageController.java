package user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {
	
	@RequestMapping("/myPage.html")
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		//View
		modelAndView.setViewName("myPage");
		modelAndView.addObject("a", "myPage.html");
		return modelAndView;
	}

	@RequestMapping("/mypage-cancle.html")
	public ModelAndView handleRequest2(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		//View
		modelAndView.setViewName("mypage-cancle");
		return modelAndView;
	}
	
	@RequestMapping("/mypage-qna.html")
	public ModelAndView handleRequest3(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		//View
		modelAndView.setViewName("mypage-qna");
		return modelAndView;
	}



}

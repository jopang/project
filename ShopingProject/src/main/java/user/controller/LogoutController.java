package user.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	@RequestMapping("/logout.html")
	public ModelAndView handleRequest(HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = req.getSession();
		session.setAttribute("user", null);
		session.invalidate(); //초기화
		String a = req.getParameter("a");
		modelAndView.setViewName("redirect:/" + a);
		return modelAndView;
		
	}
}

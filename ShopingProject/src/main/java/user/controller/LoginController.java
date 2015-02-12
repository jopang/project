package user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import user.logic.UserLogic;
import bean.UserInfo;

@Controller
@RequestMapping("login.html")
public class LoginController {
	
		@Autowired
		private UserLogic userLogic;
		
		public void setUserLogic(UserLogic userLogic) {
			this.userLogic = userLogic;
		}
		
		@RequestMapping(method=RequestMethod.GET)
		public String toLoginView(Model model) {
			UserInfo info = new UserInfo();
			info.setM_id("ehdzhs");
			info.setM_pass("tls423");
			model.addAttribute("loginForm", info);
			return "login";
		}
		
		@RequestMapping(method=RequestMethod.POST)
		public String onSubmit(@ModelAttribute UserInfo formModel, HttpSession session, Model model) {
			UserInfo loginUser = this.userLogic.login(formModel);	
			if(this.userLogic.login(formModel) == null) {
				return "redirect:/login.html";
			} else {
				session.setAttribute("user", loginUser);
				return "index"; //메인 화면으로 이동
			}
		}

}

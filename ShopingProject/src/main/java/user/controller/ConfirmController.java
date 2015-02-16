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
@RequestMapping("confirm.html")
public class ConfirmController {
	
	
	@Autowired
	private UserLogic userLogic;
	
	public void setUserLogic(UserLogic userLogic) {
		this.userLogic = userLogic;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String toLoginView(Model model) {
		UserInfo info = new UserInfo();
		model.addAttribute("confirmForm", info);
		return "confirm";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String onSubmit(@ModelAttribute("modifyForm") UserInfo formModel, HttpSession session, Model model) {
		UserInfo a = (UserInfo)session.getAttribute("user");
		formModel.setM_id(a.getM_id());
		UserInfo loginUser = this.userLogic.confirm(formModel);	
		if(this.userLogic.confirm(formModel) == null) {
			return "redirect:/confirm.html";
		} else {
			session.setAttribute("user", loginUser);
			return "modify"; //수정 화면으로 이동
		}
	}
}
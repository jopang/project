package user.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import user.logic.UserLogic;
import bean.UserInfo;

@Controller
public class ModifyController {
	@Autowired
	private UserLogic userLogic;

	@RequestMapping(value = "/modify.html", method = RequestMethod.GET)
	public String modify(Model model) {
		model.addAttribute("modifyForm", new UserInfo());
		return "modify";
	}

	@RequestMapping(value = "/modify.html", method = RequestMethod.POST)
	//모델의 이름은 모델명의 첫번째 알파벳을 소문자로 한 것이 디폴트
	public String onSubmit(@Valid @ModelAttribute("modifyForm") UserInfo modifyForm,
		BindingResult result,Model model) {
		
		this.userLogic.modifyUser(modifyForm);
		return "redirect:/index.html";

	}
}

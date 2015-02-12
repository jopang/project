package msg.controller;

import msg.logic.MessageLogic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.Message;

@Controller
public class MessageSelectController {
	@Autowired
	private MessageLogic messageLogic;

	public void setMessageLogic(MessageLogic messageLogic) {
		this.messageLogic = messageLogic;
	}
	@RequestMapping("/detail.html")
	public ModelAndView prosess(@RequestParam("num") int num){
		Message message = this.messageLogic.getMessage(num);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("messageSelect");
		modelAndView.addObject("message", message);
		
		System.out.println("detail : " + num);
		return modelAndView;
		
	}
	
	
}

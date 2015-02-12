package msg.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import msg.logic.MessageLogic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Message;
import bean.UserInfo;


@Controller
public class MessageListController {
	@Autowired
	private MessageLogic messageLogic;

	public void setMessageLogic(MessageLogic messageLogic) {
		this.messageLogic = messageLogic;
	}
	@RequestMapping("/message.html")
	public ModelAndView prosess(HttpServletRequest req){
		HttpSession session = req.getSession();
		UserInfo loginUser= (UserInfo)session.getAttribute("user");
		loginUser.getM_id();
		
		List<Message> messageList = this.messageLogic.getMessageList(loginUser.getM_id());
//		this.messageLogic.getMessageList(to_Id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("message");
		modelAndView.addObject("messageList", messageList);

		return modelAndView;
		
	}
	
	
}

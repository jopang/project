package msg.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import msg.logic.MessageLogic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vbean.VMessage;

/*해당 클래스가 Controller Bean 으로 지정한다.*/
@Controller
public class MessageInsertController {
/*
 * Bean의 자동삽입을 위해 사용하는 애노테이션
 * */
	@Autowired
	private MessageLogic messageLogic;

	public void setMessageLogic(MessageLogic messageLogic) {
		this.messageLogic = messageLogic;
	}
	private String formViewName ="insertMessageForm";
	/*처리할 요청 url을 지정한다.
	 * 실제 요청 url은 class @RequestMapping 값과 메서드 
	 * @RequestMapping값을 조합으로 지정된다.
	 * */
	@RequestMapping(value="insert.html",method=RequestMethod.GET)
	public String form(Model model){
		VMessage message = new VMessage();
		model.addAttribute("messageForm",message);
		return formViewName;
	}
	/*
	 * 요청된 파라미터를 모델 클래스에 셋팅하면서 해당 값에 대한 요효성 체크를 함께 할수있다.
	 * jsr-303dml @javax.validation Valid 애노테이션 사용
	 * */
	@RequestMapping(value="insert.html",method=RequestMethod.POST)
	public String submit(@Valid @ModelAttribute("messageForm") VMessage vmessage,
			HttpServletRequest req , BindingResult result,Model model){
			this.messageLogic.addArticle(vmessage);
			return "redirect:/message.html";
		
	}
}

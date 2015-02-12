package item.controller;

import item.logic.ItemLogic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.ItemInfo;

@Controller
@RequestMapping("menu1-2.html")
public class menu1_2Controller {
	
	@Autowired
	private ItemLogic itemLogic;
	
	public void setItemLogic(ItemLogic itemLogic) {
		this.itemLogic = itemLogic;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView handleRequest3(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		List<ItemInfo> item = this.itemLogic.getItemList("여성");

		ModelAndView modelAndView = new ModelAndView();
		/*modelAndView.addObject("itemForm", new ItemInfo());*/
		modelAndView.setViewName("menu1-2");
		modelAndView.addObject("item", item);
		return modelAndView;
	}

		

}

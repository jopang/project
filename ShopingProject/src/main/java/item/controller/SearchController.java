package item.controller;

import item.logic.ItemLogic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.ItemInfo;

@Controller
public class SearchController {

	@Autowired
	private ItemLogic itemLogic;
	
	public void setItemLogic(ItemLogic itemLogic) {
		this.itemLogic = itemLogic;
	}
	
	@RequestMapping("/searchlist.html")
	public ModelAndView itemSeacrch(@RequestParam(required=false) String i_name) {
		List<ItemInfo> list = itemLogic.searchByItem(i_name);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("searchlist");
		modelAndView.addObject("list", list);
	
		return modelAndView;
	}
	
	
	
	@RequestMapping("/itemdetail.html")
	public ModelAndView process(@RequestParam("i_num") int i_num) {
		ItemInfo itemInfo = this.itemLogic.getItem(i_num);
		/*BoardFile boardfile = (BoardFile) this.boardLogic.getBoardFile(num);*/
		
		/*this.boardLogic.addArticleCount(num);*/
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("itemdetail");
		modelAndView.addObject("iteminfo", itemInfo);
		System.out.println(i_num);
		
		return modelAndView;
	}
		
}


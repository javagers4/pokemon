package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.RankDao;
import model.Rank;

@Controller
public class RankingController {
	@Autowired
	private RankDao rankDao;
	
	@RequestMapping(value="/ranking/rankingList.html",method=RequestMethod.GET)
	public ModelAndView rankingList() {
		
		ModelAndView mav = new ModelAndView("home/template");
		
		List<Rank> rankingList =  rankDao.rankingList();
		
		mav.addObject("rankingList",rankingList);
		mav.addObject("BODY","rankingList.jsp");
		
		return mav;
	}
}

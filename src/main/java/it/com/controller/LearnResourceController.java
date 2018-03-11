package it.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import it.com.dao.LearnResouceMapper;
import it.com.entity.LearnResouce;

@Controller
@RequestMapping("/learn")
public class LearnResourceController {
	
	@Autowired
	LearnResouceMapper learnResouceMapper;
	
	@RequestMapping("/getAll")
	public ModelAndView index() {
		//获取所有
		List<LearnResouce> learnLists = learnResouceMapper.selectByExample(null);
		System.out.println(learnLists);
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("learnLists", learnLists);
		return mv;
	}
}

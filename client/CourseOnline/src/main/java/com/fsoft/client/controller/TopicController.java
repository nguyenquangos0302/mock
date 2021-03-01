package com.fsoft.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/course")
public class TopicController {
	
	@GetMapping("/{param}")
	public ModelAndView getCourse(Model model) {
		ModelAndView mav = new ModelAndView("web/topic");
		return mav;
	}

}

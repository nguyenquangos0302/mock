package com.fsoft.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/course")
public class PostArticle {

	@GetMapping("/{param}/{param}/{param}")
	public ModelAndView articleHome(Model model) {
		ModelAndView mav = new ModelAndView("web/post");
		return mav;
	}
	
}

package com.fsoft.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("")
	public ModelAndView adminHome(Model model) {
		ModelAndView mav = new ModelAndView("admin/index");
		return mav;
	}
	
	@GetMapping("/add")
	public ModelAndView addPost(Model model) {
		ModelAndView mav = new ModelAndView("admin/add");
		return mav;
	}
	
	@GetMapping("/category")
	public ModelAndView category(Model model) {
		ModelAndView mav = new ModelAndView("admin/category");
		return mav;
	}

}

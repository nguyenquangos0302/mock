package com.fsoft.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hibernate")
public class HibernateController {
	
	@GetMapping("")
	public ModelAndView java(Model model) {
		ModelAndView mav = new ModelAndView("web/article");
		return mav;
	}

}

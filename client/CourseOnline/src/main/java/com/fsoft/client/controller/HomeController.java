package com.fsoft.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@GetMapping("")
	public ModelAndView home(Model model) {
		ModelAndView mav = new ModelAndView("web/index");
		return mav;
	}
}
	
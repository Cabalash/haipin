package com.haipin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	public ModelAndView showHome(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("welcome");
	    return model;
	}
	
	
}

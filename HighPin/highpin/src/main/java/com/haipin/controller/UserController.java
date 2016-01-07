package com.haipin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haipin.bean.User;
import com.haipin.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;

//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String login(HttpServletRequest request, Model model) {
//		String email = request.getParameter("form_email").toString().trim();
//		String password = request.getParameter("form_password").toString().trim();
//
//		User user = this.userService.login(email, password);
//
//		model.addAttribute("user", user);
//		return "welcome";
//	}
//
//	@RequestMapping(value = "/searchUser", method = RequestMethod.POST)
//	public String register(HttpServletRequest request, Model model) {
//		String email = request.getParameter("form_email").toString().trim();
//		String password = request.getParameter("form_password").toString().trim();
//
//		User user = this.userService.login(email, password);
//
//		model.addAttribute("user", user);
//		return "welcome";
//	}

	@RequestMapping(value="/showUser",method=RequestMethod.POST)
	public String showUser(HttpServletRequest request, Model model) {
		String userIdStr = request.getParameter("userId").toString().trim();
		long userId = Long.parseLong(userIdStr);

		User user = this.userService.showUser(userId);

		model.addAttribute("user", user);
		return "showUser";
	}
}

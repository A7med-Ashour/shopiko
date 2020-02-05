package com.shopikoo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopikoo.model.User;
import com.shopikoo.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping("/")
	public String adminLogin(Model model,HttpSession session) {
		User user = (User) session.getAttribute("user");
		
		if(user != null && user.getRole().getId() == 1) {
			return "admin_dashboard";
		}
		model.addAttribute("user", new User());
		return "admin_login";
	}
	
	@RequestMapping("/authenticate")
	public String adminAuthenticate(@ModelAttribute("user") User user,Model model,HttpSession session) {
		
		if(UserService.isAdmin(user)) {
			session.setAttribute("user", user);
			return "admin_dashboard";
		}
		model.addAttribute("errorMSG", "Invalid Email Or Password");
		return "admin_login";
	}
	@RequestMapping("/dashboard")
	public String showDashBoard() {
		return "admin_dashboard";
	}
	
	@RequestMapping("/dumy")
	public String dumy() {
		return "dumy";
	}
}

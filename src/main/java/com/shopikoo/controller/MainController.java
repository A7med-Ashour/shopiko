package com.shopikoo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopikoo.model.User;

@Controller
public class MainController {

	@RequestMapping("/")
	public String showHome(Model model) {
		
		model.addAttribute("user",new User());
		model.addAttribute("errorMSG","here is error message");
		
		return "home";
	}
}

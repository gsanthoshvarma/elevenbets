package com.tech.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	@RequestMapping("/")
	public String welcome() {
		return "Login2";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "Login2";
	}
	
}

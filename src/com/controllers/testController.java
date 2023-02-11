package com.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class testController {
	@RequestMapping("/test")
	public String add(HttpServletRequest request) {
		
		return "login";
	}
}

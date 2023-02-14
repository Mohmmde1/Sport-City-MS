package com.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("") 

    public String home(Model model) {
        return "login";
    }
	
	@RequestMapping(value = "/error")
	public String error(HttpServletResponse response) {
		response.setStatus(500);
		return "error";
	}
	
	@RequestMapping("/notAuthorized")
	public String notAuthorized(HttpServletResponse response) {
		response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
		return "notAuthorized";
	}
}

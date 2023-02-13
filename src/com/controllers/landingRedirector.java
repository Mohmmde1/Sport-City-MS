package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class landingRedirector {
	@RequestMapping("") 
    public String home(Model model) {
        return "login";
    }
}

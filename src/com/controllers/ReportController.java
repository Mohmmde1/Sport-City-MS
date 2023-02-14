package com.controllers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.models.Booking;
import com.models.Customer;
import com.models.Equipment;
import com.models.Event;
import com.models.Feedback;

import dbUtil.HibernateCF;

@Controller
public class ReportController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("/report")
	public String report(Model model) {
		
		
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Feedback> feedbacksList = session.createQuery("from Feedback").list();
		@SuppressWarnings("unchecked")
		List<Customer> customersList = session.createQuery("from Customer").list();
		
		
		model.addAttribute("feedbacksList", feedbacksList);
		model.addAttribute("customersList", customersList);
		
		/* redirect */
		return "report";
	}
}

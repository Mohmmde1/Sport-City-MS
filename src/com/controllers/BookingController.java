package com.controllers;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.models.Booking;
import com.models.Equipment;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/booking")
public class BookingController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("")
	public String manageEquipments(Model model) {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Booking> bookingList = session.createQuery("from Booking").list();
		model.addAttribute("bookingList", bookingList);
		
		/* redirect */
		return "history";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String submit(HttpServletRequest request, HttpServletResponse response) {

		try (Session session = sessionFactory.openSession();) {

			Booking booking = new Booking ();
			
			session.beginTransaction();
			session.save(booking);
			session.getTransaction().commit();
			request.setAttribute("feedback", booking);
			return "submit_feedback";
		} catch (Exception ex) {
			return "errorPage";
		}
	}

}

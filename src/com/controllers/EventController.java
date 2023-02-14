package com.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.models.Event;

import dbUtil.HibernateCF;

@Controller
@RequestMapping("/events")
public class EventController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();
	
	@RequestMapping("/manage")
	public String listevent(Model model) {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Event> eventsList = session.createQuery("from Event").list();
		
		model.addAttribute("eventsList", eventsList);
		
		return "event";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletResponse response, HttpServletRequest request) throws IOException {

		Session session = sessionFactory.openSession();
		
		Event event = session.get(Event.class, Integer.parseInt(request.getParameter("id")));
		
		session.beginTransaction();
		session.delete(event);
		session.getTransaction().commit();
		session.close();
		
		response.sendRedirect("manage");

		return "index";
	}
}

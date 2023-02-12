package com.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Feedback;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/feedback")
public class FeedbackController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("/submit")
	public String submit(HttpServletRequest request) {
		return "submit_feedback";
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	@ResponseBody
	public String submit(HttpServletRequest request, HttpServletResponse response) {

		try (Session session = sessionFactory.openSession();) {

			Feedback feedback = new Feedback();
			feedback.setName(request.getParameter("name"));
			feedback.setEmail(request.getParameter("email"));
			feedback.setMessage(request.getParameter("message"));
			System.out.println(feedback);
			session.beginTransaction();
			session.save(feedback);
			session.getTransaction().commit();
			return "successfully feedback has been recorded " + feedback;
		} catch (Exception ex) {
			return "errorPage";
		}
	}

}

package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Admin;
import com.models.Feedback;
import com.models.User;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/profile")
public class ProfileController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		try (Session session = sessionFactory.openSession();) {

			session.beginTransaction();
			User user = session.get(User.class, id);
			user.setFname(request.getParameter("fname"));
			user.setLname(request.getParameter("lname"));
			user.setUsername(request.getParameter("email"));
			user.setPhoneNumber(request.getParameter("phoneNo"));
			if (request.getParameter("dob") != "")
				user.setDob(request.getParameter("dob"));
			session.update(user);
			session.getTransaction().commit();
			request.setAttribute("user", user);
			return "manage_profile";

		} catch (Exception ex) {
			return "errorPage";
		}
	}

	@RequestMapping("/getById")
	public String getById(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		try (Session session = sessionFactory.openSession()) {
			User user = session.get(User.class, id);
			request.setAttribute("user", user);
			return "manage_profile";
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin list.";
		}
	}

}

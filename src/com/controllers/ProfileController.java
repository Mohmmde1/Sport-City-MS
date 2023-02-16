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

	@RequestMapping("/")
	public String redirect(HttpServletRequest request) {
		if(request.getSession().getAttribute("user")==null) return "errorPage";
		request.setAttribute("user", (User)request.getSession().getAttribute("user"));
		return "manage_profile";

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpServletRequest request, HttpServletResponse response) {
		try (Session session = sessionFactory.openSession();) {

			session.beginTransaction();
			User user = (User) request.getSession().getAttribute("user");
			user = session.get(User.class, user.getId());
			user.setFname(request.getParameter("fname"));
			user.setLname(request.getParameter("lname"));
			user.setUsername(request.getParameter("email"));
			user.setPhoneNumber(request.getParameter("phoneNo"));
			if (request.getParameter("dob") != "")
				user.setDob(request.getParameter("dob"));
			session.update(user);
			session.getTransaction().commit();
			request.removeAttribute("user");
			System.out.println("HI");
			request.setAttribute("user", user);
			return "manage_profile";

		} 
	}

}

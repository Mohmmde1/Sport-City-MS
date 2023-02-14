package com.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Admin;
import com.models.Customer;
import com.models.User;

import dbUtil.HibernateCF;
import dbUtil.PasswordUtils;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
public class AuthController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(HttpServletRequest request) {
		return "register";
	}

	@SuppressWarnings("finally")
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			Long adminCount = (Long) session.createQuery("select count(*) from Admin").uniqueResult();

			User user = new User();
			user.setFname(request.getParameter("fname"));
			user.setLname(request.getParameter("lname"));
			user.setPhoneNumber(request.getParameter("phone"));
			user.setUsername(request.getParameter("username"));
			user.setPassword(PasswordUtils.hashPassword(request.getParameter("password")));

			session.save(user);

			if (adminCount == 0) {
				Admin admin = new Admin();
				admin.setUser(user);

				session.save(admin);
			} else {
				Customer customer = new Customer();
				customer.setUser(user);

				session.save(customer);
			}

			transaction.commit();
			session.close();
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			throw ex;
		} finally {
			session.close();
			response.sendRedirect("login");
			return "login";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response) {
		Session session = sessionFactory.openSession();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			User user = (User) session.createQuery("from User where username = :username")
					.setParameter("username", username).uniqueResult();

			if (user == null || !PasswordUtils.isPasswordMatch(password, user.getPassword())) {
				return "Invalid username or password";
			} else {
				// Implement login logic here, for example setting a cookie or a session
				// attribute
				// ...
				return "index";
			}
		} finally {
			session.close();
		}
	}
}

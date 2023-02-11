package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Admin;
import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
public class testController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("/test")
	public String test(HttpServletRequest request) {
		Session session = sessionFactory.openSession();
		session.close();
		return "login";
	}

	@RequestMapping("/getAll")
	@ResponseBody
	public String getAll() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Admin> adminList = session.createQuery("from Admin").list();
		session.close();
		return "this is from getAll - admin " + adminList.toString();
	}

	@RequestMapping("/getById")
	public String getById(HttpServletRequest request, Model model) {
		Session session = sessionFactory.openSession();

		int id = Integer.parseInt(request.getParameter("id"));
		Admin admin = session.get(Admin.class, id);
		model.addAttribute("admin", admin);
		session.close();
		return "modelExampleDisplayInfo";
	}

	@RequestMapping("/add")
	@ResponseBody
	public String add(HttpServletRequest request) {
		Session session = sessionFactory.openSession();

		Admin admin = new Admin();
		admin.setId(Integer.parseInt(request.getParameter("id")));

		session.beginTransaction();
		session.save(admin);
		session.getTransaction().commit();
		session.close();

		return "this is from add - modelExample";
	}

	@RequestMapping("/update")
	@ResponseBody
	public String update(HttpServletRequest request) {

		Session session = sessionFactory.openSession();

		Admin admin = session.get(Admin.class, Integer.parseInt(request.getParameter("id")));
		admin.setId(Integer.parseInt(request.getParameter("id")));

		session.beginTransaction();
		session.update(admin);
		session.getTransaction().commit();
		session.close();

		return "this is from add - modelExample";
	}

	@RequestMapping("/delete")
	@ResponseBody()
	public String delete(HttpServletRequest request) {

		Session session = sessionFactory.openSession();

		Admin admin = session.get(Admin.class, Integer.parseInt(request.getParameter("id")));

		session.beginTransaction();
		session.delete(admin);
		session.getTransaction().commit();
		session.close();

		return "this is from delete - modelExample : " + admin.toString() + " has been deleted";
	}
}

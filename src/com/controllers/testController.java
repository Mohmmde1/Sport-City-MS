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
		try (Session session = sessionFactory.openSession()) {
			List<Admin> adminList = session.createQuery("from Admin").list();
			return "this is from getAll - admin " + adminList.toString();
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin list.";
		}
	}

	@RequestMapping("/getById")
	@ResponseBody
	public String getById(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		try (Session session = sessionFactory.openSession()) {
			Admin admin = session.get(Admin.class, id);
			model.addAttribute("admin", admin);
			return "this is from getById - admin " + admin.toString();
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin list.";
		}
	}

	@RequestMapping("/add")
	@ResponseBody
	public String add(HttpServletRequest request) {

		Admin admin = new Admin();

		admin.setId(Integer.parseInt(request.getParameter("id")));

		try (Session session = sessionFactory.openSession()) {
			session.beginTransaction();
			session.save(admin);
			session.getTransaction().commit();
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin.";
		}

		return "this is from add - admin " + admin.toString();
	}

	@RequestMapping("/update")
	@ResponseBody
	public String update(HttpServletRequest request) {

		Admin admin = new Admin();

		admin.setId(Integer.parseInt(request.getParameter("id")));

		try (Session session = sessionFactory.openSession()) {
			session.beginTransaction();
			session.save(admin);
			session.getTransaction().commit();
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin.";
		}

		return "this is from update - modelExample";
	}

	@RequestMapping("/delete")
	@ResponseBody()
	public String delete(HttpServletRequest request) {

		Admin admin = new Admin();

		admin.setId(Integer.parseInt(request.getParameter("id")));

		try (Session session = sessionFactory.openSession()) {
			session.beginTransaction();
			session.delete(admin);
			session.getTransaction().commit();
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin.";
		}

		return "this is from delete - modelExample : " + admin.toString() + " has been deleted";
	}
}

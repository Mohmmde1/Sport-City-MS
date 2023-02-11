package com.controllers;

import java.util.ArrayList;
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
@Controller
public class testController {
	ArrayList<Class> classes = {Admin.class};
	SessionFactory session = HibernateCF.getSessionFactory(classes);
	
	@RequestMapping("/test")
	public String test (HttpServletRequest request) {
		
		return "login";
	}
	
	@RequestMapping("/getAll")
	@ResponseBody()
	public String getAll() {
		Session 
		

		@SuppressWarnings("unchecked")
		List<modelExample> pList = session.createQuery("from modelExample").list();

		return "this is from getAll - modelExample " + pList.toString();
	}

	@RequestMapping("/getById")
	//@ResponseBody()
	public String getById(HttpServletRequest request, Model model) {
		
		Session session = HibernateCF.getSessionFactory().openSession();
		
		int id = Integer.parseInt(request.getParameter("id"));
		modelExample p = session.get(modelExample.class, id);
		model.addAttribute("p", p);
		
		return "modelExampleDisplayInfo";
		//return "this is from getById - modelExample :" + p.toString();
	}

	@RequestMapping("/add")
	@ResponseBody()
	public String add(HttpServletRequest request) {

		Session session = HibernateCF.getSessionFactory().openSession();

		modelExample prog = new modelExample();
		prog.setName(request.getParameter("name"));
		prog.setNote(request.getParameter("note"));

		session.beginTransaction();
		session.save(prog);
		session.getTransaction().commit();
		session.close();

		return "this is from add - modelExample";
	}

	@RequestMapping("/update")
	@ResponseBody()
	public String update(HttpServletRequest request) {
		
		Session session = HibernateCF.getSessionFactory().openSession();
		
		modelExample p2u = session.get(modelExample.class, Integer.parseInt(request.getParameter("id")));
		p2u.setName("aerobic class");
		p2u.setNote(request.getParameter("note"));
		
		session.beginTransaction();
		session.update(p2u);
		session.getTransaction().commit();
		
		return "this is from update - modelExample";
	}

	@RequestMapping("/delete")
	@ResponseBody()
	public String delete(HttpServletRequest request) {
		
		Session session = HibernateCF.getSessionFactory().openSession();
		
		modelExample p2d = session.get(modelExample.class, Integer.parseInt(request.getParameter("id")));
		
		session.beginTransaction();
		session.delete(p2d);
		session.getTransaction().commit();
		
		return "this is from delete - modelExample : "+p2d.toString()+" has been deleted";
	}
}

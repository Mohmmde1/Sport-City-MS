package com.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Equipment;
import com.models.Facility;

import dbUtil.HibernateCF;

@Controller
@RequestMapping("/equipments")
public class EquipmentsController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();
	
	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String manageEquipments(Model model) {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Equipment> equipmentsList = session.createQuery("from Equipment").list();
		
		model.addAttribute("equipmentsList", equipmentsList);
		
		/* redirect */
		return "equipMng";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	protected String addEquipments(Model model) {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Facility> facilitiesList = session.createQuery("from Facility").list();
		session.close();
		
		model.addAttribute("facilitiesList", facilitiesList);
		
		/* redirect */
		return "equipAcq";
	}

	@RequestMapping(value = "/manage", method = RequestMethod.POST)
	public String manageEquipment(Model model) {
		/* backend */
		return "equipMng";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	protected String addEquipment(HttpServletResponse response, HttpServletRequest request, Model model) throws IOException {		
		/* backend */
		Session session = sessionFactory.openSession();

		int id = Integer.parseInt(request. getParameter("facility"));
		Facility facility = session.get(Facility.class, id);
		
		Equipment equipment = new Equipment(request. getParameter("equipment"),
				request. getParameter("equipDetails"),
				request. getParameter("provider"),
				request. getParameter("email"),
				facility);
				
		session.beginTransaction();
		session.save(equipment);
		session.getTransaction().commit();
		session.close();
		
		response.sendRedirect("manage");
		
		return "index";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletResponse response, HttpServletRequest request) throws IOException {

		Session session = sessionFactory.openSession();
		
		Equipment equipment = session.get(Equipment.class, Integer.parseInt(request.getParameter("id")));
		
		session.beginTransaction();
		session.delete(equipment);
		session.getTransaction().commit();
		session.close();
		
		response.sendRedirect("manage");

		return "index";
	}
	
	@RequestMapping("/update")
	public String update(HttpServletResponse response, HttpServletRequest request) throws IOException {

		Session session = sessionFactory.openSession();

		Equipment equipment = session.get(Equipment.class, Integer.parseInt(request.getParameter("id")));
		equipment.setStatus(request.getParameter("status"));

		session.beginTransaction();
		session.update(equipment);
		session.getTransaction().commit();
		session.close();
		
		response.sendRedirect("manage");

		return "index";
	}
	
	@ExceptionHandler(value = ConstraintViolationException.class)
	@ResponseBody()
	public String handleConstraintViolationException(Exception e) {
		return "You cannot delete this equipment because it is booked by a customer.";
	}
}

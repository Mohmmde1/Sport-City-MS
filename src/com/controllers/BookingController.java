package com.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.models.Admin;
import com.models.Booking;
import com.models.Customer;
import com.models.Equipment;
import com.models.Facility;
import com.models.User;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/booking")
public class BookingController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@SuppressWarnings("unchecked")
	@RequestMapping(value="history", method = RequestMethod.GET)
	public String history(HttpServletRequest request, Model model) {
		Session session = sessionFactory.openSession();
		Customer customer  = (Customer) request.getSession().getAttribute("customer");
		Admin admin = (Admin)request.getSession().getAttribute("admin");

		List<Booking> bookingList = new ArrayList<Booking>();
		
		if (admin != null) {
			bookingList = session.createQuery("from Booking").list();
		} else if (customer != null) {
			bookingList = session.createQuery("from Booking where customer_id = :cid")
					.setParameter("cid", customer.getId()).list();
		}
		
		System.out.println(customer);
		System.out.println(admin);
		model.addAttribute("bookingList", bookingList);

		/* redirect */
		return "history";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String bookingForm(Model model) {
		try (Session session = sessionFactory.openSession();) {
			List<Facility> facilityList = session.createQuery("from Facility").list();
			List<Equipment> equipmentsList = session.createQuery("from Equipment").list();
			
			model.addAttribute("facilityList", facilityList);
			model.addAttribute("equipmentsList", equipmentsList);
			
			return "booking";
		} catch (Exception ex) {
			return "errorPage";
		}
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String submit(HttpServletRequest request, HttpServletResponse response) {

		try (Session session = sessionFactory.openSession();) {
			Customer customer  = (Customer) request.getSession().getAttribute("customer");
			Admin admin = (Admin)request.getSession().getAttribute("admin");
			
			int facility_id = Integer.parseInt(request.getParameter("facility_id"));
			int equipment_id = Integer.parseInt(request.getParameter("equipment_id"));
			
			
			Facility facility = (Facility) session.createQuery("from Facility where id = :facility_id")
					.setParameter("facility_id", facility_id).uniqueResult();
			
			Equipment equipment = (Equipment) session.createQuery("from Equipment where id = :equipment_id")
					.setParameter("equipment_id", equipment_id).uniqueResult();
			
			Booking booking = new Booking();
			
			booking.setStartDate(request.getParameter("from"));
			booking.setEndDate(request.getParameter("to"));
			booking.setFacility(facility);
			booking.setEquipment(equipment);
			
			if(customer != null) {
				booking.setCustomer(customer);
			}
			else if(admin != null) { /** nothing **/ }
			else { return "notAuthorized"; }

			session.beginTransaction();
			session.save(booking);
			session.getTransaction().commit();
			
			return "new";
		} catch (Exception ex) {
			return "redirect:/booking/new";
//			return "errorPage";
		}
	}

}

package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.models.Employee;
import com.models.Facility;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/facility")
public class FacilityController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("/")
	public String submit(HttpServletRequest request, HttpSession http_session) {
		if(request.getSession().getAttribute("admin") == null) return "errorPage";
		try (Session session = sessionFactory.openSession()) {
			List<Facility> facilityList = session.createQuery("from Facility").list();
			List<Employee> employeesList = session.createQuery("from Employee").list();

			String json = new Gson().toJson(facilityList);

			http_session.setAttribute("facilityList", facilityList);
			http_session.setAttribute("employeesList", employeesList);
			http_session.setAttribute("json", json);
			return "manage_facilities";
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "errorPage";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpServletRequest request, HttpServletResponse response) {
		try (Session session = sessionFactory.openSession();) {

			session.beginTransaction();
			Facility facility = session.get(Facility.class, Integer.parseInt(request.getParameter("selectedFacility")));
			facility.setCapacity(Integer.parseInt(request.getParameter("capacity")));
			facility.setLocation(request.getParameter("location"));
			facility.setStatus(request.getParameter("status"));
			facility.setPrice(Double.parseDouble(request.getParameter("price")));
			Employee employee = session.get(Employee.class, Integer.parseInt(request.getParameter("selectedEmployee")));
			facility.setEmployee(employee);

			session.update(facility);
			session.getTransaction().commit();
			request.setAttribute("facility", facility);
			return "redirect:/facility/";

		}
	}

}

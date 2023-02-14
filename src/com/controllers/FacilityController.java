package com.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.models.Admin;
import com.models.Employee;
import com.models.Facility;
import com.models.User;

import dbUtil.HibernateCF;

/* You can use the following controller as a reference on how to use database operations with Hibernate */
@Controller()
@RequestMapping("/facility")
public class FacilityController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping("/")
	public String submit(HttpServletRequest request, HttpSession http_session) {
		try (Session session = sessionFactory.openSession()) {
			List<Facility> facilityList = session.createQuery("from Facility").list();
			List<Employee> employeesList = session.createQuery("from Employee").list();
			String json = "[";
			for (Facility facility : facilityList) {
				json += "{\"id\": " + facility.getId() + ", ";
				json += "\"name\": \"" + facility.getName() + "\", ";
				json += "\"location\": \"" + facility.getLocation() + "\", ";
				json += "\"capacity\": " + facility.getCapacity() + ", ";
				json += "\"price\": " + facility.getPrice() + ", ";
				if (facility.getEmployee() != null)
					json += "\"person\": \"" + facility.getEmployee().getName() + "\", ";
				else
					json += "\"person\": \"" + "" + "\", ";
				json += "\"status\": \"" + facility.getStatus() + "\"}, ";
			}
			json = json.substring(0, json.length() - 2) + "]";

			http_session.setAttribute("facilityList", facilityList);
			http_session.setAttribute("employeesList", employeesList);
			http_session.setAttribute("json", json);
			return "manage_facilities";
		} catch (Exception e) {
			// log the error or handle it in some other way
			e.printStackTrace();
			return "An error occurred while trying to retrieve the admin list.";
		}

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpServletRequest request, HttpServletResponse response, HttpSession http_session) throws IOException {
		http_session.invalidate();
		http_session = request.getSession(true);
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

	        // re-query the database to get the updated facility list
	        List<Facility> facilityList = session.createQuery("from Facility").list();

	        // update the facility list in the session attribute
	        http_session.setAttribute("facilityList", facilityList);

	        // update the json in the session attribute
	        String json = "[";
	        for (Facility f : facilityList) {
	            json += "{\"id\": " + f.getId() + ", ";
	            json += "\"name\": \"" + f.getName() + "\", ";
	            json += "\"location\": \"" + f.getLocation() + "\", ";
	            json += "\"capacity\": " + f.getCapacity() + ", ";
	            json += "\"price\": " + f.getPrice() + ", ";
	            if (f.getEmployee() != null)
	                json += "\"person\": \"" + f.getEmployee().getName() + "\", ";
	            else
	                json += "\"person\": \"" + "" + "\", ";
	            json += "\"status\": \"" + f.getStatus() + "\"}, ";
	        }
	        json = json.substring(0, json.length() - 2) + "]";
	        http_session.setAttribute("json", json);

	        // redirect to the submit method to show the updated facility list
	        return "/index";
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

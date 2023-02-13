package com.controllers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.models.Employee;

import dbUtil.HibernateCF;

@Controller
@RequestMapping("/employees")
public class EmployeesController {
	SessionFactory sessionFactory = HibernateCF.getSessionFactory();

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	protected String redirect(Model model) {

		Session session = sessionFactory.openSession();

		@SuppressWarnings("unchecked")
		List<Employee> employeesList = session.createQuery("from Employee").list();

		model.addAttribute("employeesList", employeesList);

		return "employees";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	protected String addEmployee(HttpServletResponse response, HttpServletRequest request) throws IOException {

		Employee employee = new Employee(request.getParameter("name"),
				request.getParameter("email"),
				request.getParameter("dob"));

		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(employee);
		session.getTransaction().commit();

		response.sendRedirect("manage");

		return "landing";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	protected String deleteEmployee(HttpServletResponse response, HttpServletRequest request) throws IOException {
		Session session = sessionFactory.openSession();		
		
		Employee employee = new Employee();

		employee.setId(Integer.parseInt(request.getParameter("id")));

		session.beginTransaction();
		session.delete(employee);
		session.getTransaction().commit();

		response.sendRedirect("manage");

		return "landing";
	}
}

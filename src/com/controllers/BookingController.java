/*
 * package com.controllers;
 * 
 * import java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest;
 * 
 * import org.hibernate.Session; import org.hibernate.SessionFactory; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.ResponseBody;
 * 
 * import com.models.Admin; import com.models.Customer;
 * 
 * import dbUtil.HibernateCF;
 * 
 * You can use the following controller as a reference on how to use database
 * operations with Hibernate
 * 
 * @Controller() public class BookingController { SessionFactory sessionFactory
 * = HibernateCF.getSessionFactory();
 * 
 * @RequestMapping("/test") public String test(HttpServletRequest request) {
 * Session session = sessionFactory.openSession(); session.close(); return
 * "login"; }
 * 
 * @RequestMapping("/getAll")
 * 
 * @ResponseBody public String getAll() { Session session =
 * sessionFactory.openSession();
 * 
 * @SuppressWarnings("unchecked") List<Customer> customerList =
 * session.createQuery("from Customer").list(); session.close(); return
 * "this is from getAll - customer " + customerList.toString(); }
 * 
 * 
 * @RequestMapping("/add")
 * 
 * @ResponseBody public String add(HttpServletRequest request) { Session session
 * = sessionFactory.openSession();
 * 
 * Admin admin = new Admin();
 * admin.setId(Integer.parseInt(request.getParameter("id")));
 * 
 * session.beginTransaction(); session.save(admin);
 * session.getTransaction().commit(); session.close();
 * 
 * return "this is from add - modelExample"; }
 * 
 * }
 */
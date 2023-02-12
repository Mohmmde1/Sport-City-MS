package dbUtil;

import java.util.Arrays;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.models.*;

public class HibernateCF {
	static SessionFactory sessionFactory = null;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			Configuration config = new Configuration();
			config.configure("hibernate.cfg.xml");

			List<Class<?>> classes = Arrays.asList(User.class, Admin.class, Booking.class, Customer.class,
					Employee.class, Equipment.class, Event.class, Facility.class, Feedback.class, Report.class);

			classes.forEach(config::addAnnotatedClass);

			sessionFactory = config.buildSessionFactory();
		}

		return sessionFactory;
	}
}

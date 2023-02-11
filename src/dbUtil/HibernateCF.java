package dbUtil;

import java.util.ArrayList;
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

			List<Class> classes = new ArrayList<>();
			classes.add(User.class);
			classes.add(Admin.class);
			classes.add(Booking.class);
			classes.add(Customer.class);
			classes.add(Employee.class);
			classes.add(Equipment.class);
			classes.add(Event.class);
			classes.add(Facility.class);
			classes.add(Feedback.class);
			classes.add(Report.class);

			for (Class c : classes) {
				config.addAnnotatedClass(c);
			}

			sessionFactory = config.buildSessionFactory();
		}

		return sessionFactory;
	}
}

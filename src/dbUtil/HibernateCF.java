package dbUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateCF {
	static SessionFactory sessionFactory = null;

	public static SessionFactory getSessionFactory(Class[] classes) {

		if (sessionFactory == null) {
			Configuration config = new Configuration();
			config.configure("hibernate.cfg.xml");
			for (Class c : classes) {

				config.addAnnotatedClass(c);
			}

			sessionFactory = config.buildSessionFactory();
		}
		return sessionFactory;
	}
}

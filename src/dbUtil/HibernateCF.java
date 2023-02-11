package dbUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateCF {
	static SessionFactory sessionFactory = null;
	
	public static SessionFactory getSessionFactory(Class modelClass) {
		
		if (sessionFactory == null) {
			Configuration config = new Configuration();
			config.configure("hibernate.cfg.xml");
			config.addAnnotatedClass(modelClass);
			
			sessionFactory = config.buildSessionFactory();
		}
		return sessionFactory;
	}
}

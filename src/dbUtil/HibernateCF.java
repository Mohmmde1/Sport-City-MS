package dbUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.models.modelExample;

public class HibernateCF {
	static SessionFactory sessionFactory = null;
	
	public static SessionFactory getSessionFactory() {
		
		if (sessionFactory == null) {
			Configuration config = new Configuration();
			config.configure("hibernate.cfg.xml");
			config.addAnnotatedClass(modelExample.class);
			
			sessionFactory = config.buildSessionFactory();
		}
		return sessionFactory;
	}
}

package com.shopikoo.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.shopikoo.model.Role;
import com.shopikoo.model.User;

public class DBUtil {

	private static SessionFactory factory = new Configuration().configure("hibernate_config.xml")
																							.addAnnotatedClass(User.class)
																							.addAnnotatedClass(Role.class)
																							.buildSessionFactory();
	
	public static Session getSession() {
		
		return factory.getCurrentSession();
	}

}

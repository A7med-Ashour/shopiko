package com.shopikoo.data;




import org.hibernate.Session;
import org.hibernate.query.Query;

import com.shopikoo.model.User;
import com.shopikoo.util.DBUtil;

public class UserDB {

	public static User getByEmail(String email) {
		
		Session session = DBUtil.getSession();
		User user = null;
		
		try {
			session.beginTransaction();
			
			Query<?> query = session.createQuery("FROM User u WHERE u.email = :email ");
			query.setParameter("email", email);
			 user = (User)query.uniqueResult();
			
			session.getTransaction().commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return user;
	}

}

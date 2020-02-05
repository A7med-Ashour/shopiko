package com.shopikoo.service;

import com.shopikoo.data.UserDB;
import com.shopikoo.model.User;

public class UserService {

	public static boolean isAdmin(User user) {
		
		User u = UserDB.getByEmail(user.getEmail());
		
		if(   u != null 		&&        ( u.getPassword().equals( user.getPassword() )  )    &&    ( u.getRole().getId() == 1 ) ) {
			user.clone(u);
			return true;
		}
		return false ;
	}

}

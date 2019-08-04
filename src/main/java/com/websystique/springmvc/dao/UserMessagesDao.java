package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.UserMessages;

public interface UserMessagesDao {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
	
}

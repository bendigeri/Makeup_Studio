package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.UserMessages;

public interface UserMessagesDao {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
	List<UserMessages> getMessageList();
	
}

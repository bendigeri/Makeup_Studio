package com.makeover.dao;

import java.util.List;

import com.makeover.model.UserMessages;

public interface UserMessagesDao {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
	List<UserMessages> getMessageList();
	
}

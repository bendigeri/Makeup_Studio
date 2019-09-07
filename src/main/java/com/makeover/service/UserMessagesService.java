package com.makeover.service;

import java.util.List;

import com.makeover.model.UserMessages;

public interface UserMessagesService {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
	List<UserMessages> getMessageList();
}

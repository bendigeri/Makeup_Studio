package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.UserMessages;

public interface UserMessagesService {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
	List<UserMessages> getMessageList();
}

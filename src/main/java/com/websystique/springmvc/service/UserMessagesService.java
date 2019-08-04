package com.websystique.springmvc.service;

import com.websystique.springmvc.model.UserMessages;

public interface UserMessagesService {

	UserMessages findById(int id);
	void save(UserMessages userMessages);
}

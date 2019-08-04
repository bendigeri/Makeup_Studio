package com.websystique.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.dao.UserMessagesDao;
import com.websystique.springmvc.model.UserMessages;

@Service("userMessagesService")
@Transactional
public class UserMessagesServiceImpl implements UserMessagesService{

	@Autowired
	UserMessagesDao dao;
	
	@Override
	public UserMessages findById(int id) {
		
		return dao.findById(id);
	}

	@Override
	public void save(UserMessages userMessages) {
		dao.save(userMessages);
		
	}

}

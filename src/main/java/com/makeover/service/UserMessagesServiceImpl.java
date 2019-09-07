package com.makeover.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.makeover.dao.UserMessagesDao;
import com.makeover.model.UserMessages;

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

	@Override
	public List<UserMessages> getMessageList() {
		return dao.getMessageList();
	}

}

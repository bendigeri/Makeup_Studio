package com.websystique.springmvc.dao;

import org.springframework.stereotype.Repository;

import com.websystique.springmvc.model.UserMessages;

@Repository("userMessagesDao")
public class UserMessagesDaoImpl extends AbstractDao<Integer, UserMessages> implements UserMessagesDao{

	@Override
	public UserMessages findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(UserMessages userMessages) {
		persist(userMessages);
	}

}

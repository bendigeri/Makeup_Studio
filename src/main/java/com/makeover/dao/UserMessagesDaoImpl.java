package com.makeover.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.makeover.model.MakeupBlog;
import com.makeover.model.UserMessages;

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

	@Override
	public List<UserMessages> getMessageList() {

		Criteria criteria = createEntityCriteria();
		List<UserMessages> msgList = (List<UserMessages>) criteria.list();
		return msgList;
		
	}

}

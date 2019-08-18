package com.websystique.springmvc.dao;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.fabric.xmlrpc.base.Array;
import com.websystique.springmvc.model.UserMessages;

public class TestClass {

	
	public static void main(String[] args) {
		
		
		UserMessages messages= new UserMessages();
		messages.setUserName("Shankar");
		messages.setEmail("ssbendiger@gmail.cm");
		messages.setSubject("subject");
		
		UserMessages messages2= new UserMessages();
		messages.setUserName("Shankar");
		messages.setEmail("ssbendiger@gmail.cm");
		messages.setSubject("subject");
		
		List<UserMessages> list=new ArrayList<UserMessages>();
		list.add(messages);
		list.add(messages2);
		
		
		ObjectMapper mapper= new ObjectMapper();
		try {
			String str= mapper.writeValueAsString(list);
			System.out.println(str);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
				
	}
}

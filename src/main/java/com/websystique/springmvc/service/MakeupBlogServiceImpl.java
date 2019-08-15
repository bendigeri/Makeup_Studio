package com.websystique.springmvc.service;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.dao.MakeupBlogDao;
import com.websystique.springmvc.model.MakeupBlog;

@Service("makeupBlogService")
@Transactional
public class MakeupBlogServiceImpl implements MakeupBlogService{

	@Autowired
	MakeupBlogDao dao;
	
	@Override
	public void save(MakeupBlog makeupBlog) {
		dao.save(makeupBlog);
	}

	@Override
	public List<MakeupBlog> blogList() {
		return dao.blogList();
	}

	@Override
	public byte[] getPhotoById(int id) {
		return dao.getPhotoById(id);
	}

}

package com.websystique.springmvc.dao;

import java.sql.Blob;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.websystique.springmvc.model.MakeupBlog;
import com.websystique.springmvc.model.User;

@Repository("makeupBlogDao")
public class MakeupBlogDaoImpl extends AbstractDao<Integer, MakeupBlog> implements MakeupBlogDao{

	@Override
	public void save(MakeupBlog makeupBlog) {
		persist(makeupBlog);
	}

	@Override
	public List<MakeupBlog> blogList() {
		
		Criteria criteria = createEntityCriteria();
		List<MakeupBlog> blogs = (List<MakeupBlog>) criteria.list();
		return blogs;
	}

	@Override
	public byte[] getPhotoById(int id) {
		MakeupBlog makeupBlog= getByKey(id);
		
		return makeupBlog.getFileBytes();
	}

}

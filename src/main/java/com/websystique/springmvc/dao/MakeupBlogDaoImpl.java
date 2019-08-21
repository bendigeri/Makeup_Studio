package com.websystique.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.websystique.springmvc.model.MakeupBlog;

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

	@Override
	public MakeupBlog getBlogById(int id) {
		MakeupBlog makeupBlog= getByKey(id);
		return makeupBlog;
	}
	
	

}

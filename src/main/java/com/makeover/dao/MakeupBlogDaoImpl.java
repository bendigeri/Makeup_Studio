package com.makeover.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.makeover.model.MakeupBlog;

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
	public List<MakeupBlog> latestBlog(){
		Session session= getSession();
		SQLQuery query= session.createSQLQuery("SELECT * FROM MAKEUP_BLOG_POSTS ORDER BY POST_ID DESC LIMIT 1");
		List<MakeupBlog> blogs = query.list();
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

package com.makeover.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.makeover.dao.MakeupBlogDao;
import com.makeover.model.MakeupBlog;

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

	@Override
	public MakeupBlog getBlogById(int id) {
		return dao.getBlogById(id);
	}
	
	@Override
	public void updateUser(MakeupBlog blog) {
		MakeupBlog entity = dao.getBlogById(blog.getId());
		if(entity!=null){
			entity.setPostDate(new Date());
			entity.setPostStatus("draft");
			entity.setTitle(blog.getTitle());
			entity.setArticleContent(blog.getArticleContent());
			if(blog.getFileBytes()!=null) {
				entity.setFileBytes(blog.getFileBytes());
			}
			entity.setShortArticleContent(blog.getArticleContent().substring(0, 30));
			
		}
	}

}

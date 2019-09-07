package com.makeover.dao;

import java.util.List;

import com.makeover.model.MakeupBlog;

public interface MakeupBlogDao {
	void save(MakeupBlog makeupBlog);
	public List<MakeupBlog> blogList();
	public byte[] getPhotoById(int id);
	public MakeupBlog getBlogById(int id);
}

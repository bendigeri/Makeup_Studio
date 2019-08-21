package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.MakeupBlog;

public interface MakeupBlogService {

	void save(MakeupBlog makeupBlog);
	public List<MakeupBlog> blogList();
	public byte[] getPhotoById(int id);
	public MakeupBlog getBlogById(int id);
	public void updateUser(MakeupBlog blog);
}

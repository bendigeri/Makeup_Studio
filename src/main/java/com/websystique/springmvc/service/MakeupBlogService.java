package com.websystique.springmvc.service;

import java.sql.Blob;
import java.util.List;

import com.websystique.springmvc.model.MakeupBlog;

public interface MakeupBlogService {

	void save(MakeupBlog makeupBlog);
	public List<MakeupBlog> blogList();
	public byte[] getPhotoById(int id);
}

package com.makeover.dao;

import java.util.List;

import com.makeover.model.Gallery;

public interface GalleryDao {
	
	void save(Gallery gallery);
	List<Gallery> getGalleryImages();
	Gallery findById(int id);
	public byte[] getPhotoById(int id);
	
}

package com.makeover.service;

import java.util.List;

import com.makeover.model.Gallery;

public interface GalleryService {

	void save(Gallery gallery);
	List<Gallery> getGalleryImages();
	Gallery findById(int id);
	public byte[] getPhotoById(int id);
}

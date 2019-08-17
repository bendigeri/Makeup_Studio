package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.Gallery;

public interface GalleryService {

	void save(Gallery gallery);
	List<Gallery> getGalleryImages();
	Gallery findById(int id);
	public byte[] getPhotoById(int id);
}

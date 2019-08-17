package com.websystique.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.dao.GalleryDao;
import com.websystique.springmvc.model.Gallery;

@Service("galleryService")
@Transactional
public class GalleryServiceImpl implements GalleryService{

	@Autowired
	GalleryDao dao;
	
	@Override
	public void save(Gallery gallery) {
		dao.save(gallery);
		
	}

	@Override
	public List<Gallery> getGalleryImages() {
		
		return dao.getGalleryImages();
	}

	@Override
	public Gallery findById(int id) {
		
		return dao.findById(id);
	}

	@Override
	public byte[] getPhotoById(int id) {
		return dao.getPhotoById(id);
	}

	
}

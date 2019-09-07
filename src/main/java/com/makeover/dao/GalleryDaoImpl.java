package com.makeover.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.makeover.model.Gallery;

@Repository("galleryDao")
public class GalleryDaoImpl extends AbstractDao<Integer, Gallery> implements GalleryDao{

	@Override
	public Gallery findById(int id) {
		return getByKey(id);
	}

	@Override
	public void save(Gallery gallery) {
		persist(gallery);
		
	}

	@Override
	public List<Gallery> getGalleryImages() {
		Criteria criteria = createEntityCriteria();
		List<Gallery> galleryImages = (List<Gallery>) criteria.list();
		return galleryImages;
	}

	@Override
	public byte[] getPhotoById(int id) {
		Gallery image= getByKey(id);
		return image.getFileBytes();
	}

}

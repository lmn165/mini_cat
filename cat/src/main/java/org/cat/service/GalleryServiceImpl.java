package org.cat.service;

import java.util.List;

import org.cat.domain.Ecotype;
import org.cat.mappers.GalleryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GalleryServiceImpl implements GalleryService{

	@Autowired
	GalleryMapper mapper;
	
	@Override
	public List<Ecotype> getList() {
		
		return mapper.getList();
	}

	@Override
	public Ecotype get(Integer eno) {

		return mapper.read(eno);
	}

}

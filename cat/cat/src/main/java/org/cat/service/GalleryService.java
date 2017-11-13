package org.cat.service;

import java.util.List;

import org.cat.domain.Ecotype;

public interface GalleryService {

	public List<Ecotype> getList();
	
	public Ecotype get(Integer eno);
	
}

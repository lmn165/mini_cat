package org.cat.mappers;

import java.util.List;

import org.cat.domain.Ecotype;

public interface EcoDataMapper extends CRUDMapper<Ecotype, Integer> {
	
	public void regData(Ecotype eco);
	
	public String getTime();
	
}

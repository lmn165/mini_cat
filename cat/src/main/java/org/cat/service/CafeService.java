package org.cat.service;

import org.cat.domain.Cafe;

public interface CafeService {
	public Cafe get(Integer cno);	// 디테일
	
	public Cafe getList(Integer cno);
}

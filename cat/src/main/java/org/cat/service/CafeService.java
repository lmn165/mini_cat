package org.cat.service;

import java.util.List;

import org.cat.domain.Cafe;

public interface CafeService {
	public Cafe get(Integer cno);	// 디테일
	
	public Cafe getList(Integer cno);

	public List<Cafe> getNameList(String cname); // 이름 가져오기
	
	
}

package org.cat.service;

import org.cat.domain.Cafe;
import org.cat.mappers.CafeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Log	// 로그 써야지
@Service // 나 서비스예요
public class CafeServiceImpl implements CafeService {

	@Autowired // 빈과 빈과의 의존성을 자동으로 충족시켜주는애
	private CafeMapper mapper; // mapper 쓸래요
	
	@Override
	public Cafe get(Integer cno) {
		log.info("get");		// get 로그로 보여주셈
		return mapper.read(cno);	// tno를 CafeMapper.xml에 있는 read에 값을 전달하여 실행하셈 				
	}

	@Override
	public Cafe getList(Integer cno) {
		log.info("getList");		// get 로그로 보여주셈
		return mapper.getList(cno);
	}
}

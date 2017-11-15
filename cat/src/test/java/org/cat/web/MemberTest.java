package org.cat.web;

import java.util.stream.IntStream;

import javax.inject.Inject;

import org.cat.domain.Member;
import org.cat.mappers.MemberMapper;
import org.cat.service.MemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class MemberTest {

	@Inject
	MemberService mapper;
//	@Inject
//	MemberMapper mapper;
	
	
	

//	@Test
//	public void createTest() {
//		
//		IntStream
//		.range(0,5)
//		.forEach(i -> {
//			Member mb = new Member();
//			mb.setId("user" + i);
//			mb.setPw("user" + i);
//			mb.setNick("user" + i);
//			mapper.register(mb);
//			log.info(mapper.toString());      // 문자열밖에 안되기 때문에 문자열로..
//		});
//          
//	}
	
	
	
	@Test
	public void readTest() {
		String id ="user1";
		String pw ="user";
		
		log.info(""+ mapper.read(id, pw));      // 문자열밖에 안되기 때문에 문자열로..
//		log.info("" + mapper.g(1));      // 문자열밖에 안되기 때문에 문자열로..
		
	}

}

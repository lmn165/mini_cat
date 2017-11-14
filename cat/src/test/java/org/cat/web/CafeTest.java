package org.cat.web;

import javax.inject.Inject;

import org.cat.service.CafeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class CafeTest {

	@Inject
	CafeService mapper;
//	@Inject
//	CafeMapper mapper;

	@Test
    public void readListTest() {
          
          log.info("" + mapper.getList(13));      // 문자열밖에 안되기 때문에 문자열로..
          
    }
	@Test
	public void readTest() {
		
		log.info("" + mapper.getList(1));      // 문자열밖에 안되기 때문에 문자열로..
//		log.info("" + mapper.read(1));      // 문자열밖에 안되기 때문에 문자열로..
		
	}

}

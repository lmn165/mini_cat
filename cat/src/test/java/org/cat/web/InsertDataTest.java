package org.cat.web;

import java.io.File;
import java.util.Scanner;

import javax.inject.Inject;

import org.cat.domain.Ecotype;
import org.cat.mappers.EcoDataMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class InsertDataTest {

	@Inject
	EcoDataMapper mapper;

	@Test
	public void now() throws Exception {
		log.info(mapper.getTime());
	}

	@Test
	public void insertTest() {

		for (int i = 0; i < 2; i++) {
			Ecotype eco = new Ecotype();
			eco.setEname("이름");
			eco.setEpath("경로" + i);

			mapper.regData(eco);
		}
	}

	/* 
	// 데이터 입력
	@Test
	public void selTest() {
		StringBuffer text = new StringBuffer();
		StringBuffer text1 = new StringBuffer();
		StringBuffer text2 = new StringBuffer();
		String[] jsonArr = null; String[] nameArr = null; String[] pathArr = null;
		File file = null;
		Scanner sc = null;
		
		// 각각의 데이터들 문자배열에 저장
		try {
			file = new File("D:\\file\\gallery.json");
			sc = new Scanner(file);

			while (sc.hasNext()) {
				text.append(sc.nextLine());
			}
			jsonArr = text.toString().split(",/");
			sc.close();
			
			
			
			
			file = new File("D:\\file\\path.txt");
			sc = new Scanner(file);

			while (sc.hasNext()) {
				text1.append(sc.nextLine());
			}
			pathArr = text1.toString().split(",");
			sc.close();
			
			
			file = new File("D:\\file\\name.txt");
			sc = new Scanner(file);
			
			while (sc.hasNext()) {
				text2.append(sc.nextLine());
			}
			nameArr = text2.toString().split(",");
			sc.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		Ecotype eco = new Ecotype();
		int i = 38;
		System.out.println(jsonArr[i]);
//		for(int i=0; i < nameArr.length; i++) {
			eco.setEname(nameArr[i]);
			eco.setEpath(pathArr[i]);
			eco.setEdata(jsonArr[i]);
			mapper.regData(eco);
//		}
		

	}
*/
}

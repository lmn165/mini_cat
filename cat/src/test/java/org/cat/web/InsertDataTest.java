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

	
	// 데이터 수정
	@Test
	public void modTest() {
		Ecotype eco = new Ecotype();
		
		for (int i=1; i<=39; i++) {
			eco.setEno(i);
			eco.setEpath(i+".jpg");
			mapper.update(eco);
		}
	}
	
	
	
	
	// 데이터 입력
	@Test
	public void inDataTest() {
		StringBuffer text = new StringBuffer();
		StringBuffer text1 = new StringBuffer();
		StringBuffer text2 = new StringBuffer();
		StringBuffer text3 = new StringBuffer();
		StringBuffer text4 = new StringBuffer();
		File file;
		Scanner sc;
		String[] nameArr = null; String[] sumArr = null; String[] pathArr = null;
		String[] conArr = null; String[] widthArr = null;
		
		
		try {
			// 1
			file = new File("D:\\refile\\content.txt");
			sc = new Scanner(file);

			while (sc.hasNext()) {
				text.append(sc.nextLine());
			}
			conArr = text.toString().split("★");
			sc.close();
			
			// 2
			file = new File("D:\\refile\\name.txt");
			sc = new Scanner(file);
			
			while (sc.hasNext()) {
				text1.append(sc.nextLine());
			}
			nameArr = text1.toString().split("★");
			sc.close();
			
			// 3
			file = new File("D:\\refile\\path.txt");
			sc = new Scanner(file);
			
			while (sc.hasNext()) {
				text2.append(sc.nextLine());
			}
			pathArr = text2.toString().split("★");
			sc.close();
			
			// 4
			file = new File("D:\\refile\\summary.txt");
			sc = new Scanner(file);
			
			while (sc.hasNext()) {
				text3.append(sc.nextLine());
			}
			sumArr = text3.toString().split("★");
			sc.close();
			
			// 5
			file = new File("D:\\refile\\width.txt");
			sc = new Scanner(file);
			
			while (sc.hasNext()) {
				text4.append(sc.nextLine());
			}
			widthArr = text4.toString().split("★");
			sc.close();
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int a = 1;
		Ecotype eco = new Ecotype();
		for(int i=1; i < nameArr.length; i++) {
			/* 결과확인
			System.out.println(a + ": " +nameArr[i]);
			System.out.println(a + ": " +sumArr[i]);
			System.out.println(a + ": " +pathArr[i]);
			System.out.println(a + ": " +conArr[i]);
			System.out.println(a + ": " +widthArr[i]);
			++a;
			*/
			eco.setEname(nameArr[i]);
			eco.setSummary(sumArr[i]);
			eco.setEpath(pathArr[i]);
			eco.setEcontent(conArr[i]);
			eco.setWidth(widthArr[i]);
			mapper.regData(eco);
		}
		
		
	}
	
	
	
	/* 
	// 데이터 입력 json 형식
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

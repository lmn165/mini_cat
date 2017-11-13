package org.cat.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DatabaseTest {

	@Test
	public void testConnection() throws Exception {
		
		String driver ="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://all.ulovely.me:3307/mini_db";
		String user = "test";
		String pw = "1234";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, pw);
		

		System.out.println(con);
		
		con.close();
	}
	
}

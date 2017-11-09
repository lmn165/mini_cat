package org.cat.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DatabaseTest {

	@Test
	public void testConnection() throws Exception {
		
		String driver ="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/java97_db";
		String user = "root";
		String pw = "java97";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, pw);
		

		System.out.println(con);
		
		con.close();
	}
	
}

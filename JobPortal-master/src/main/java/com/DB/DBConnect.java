package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() throws SQLException {

			try {
				if (conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","root");
			} 
			}catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			}
		
		return conn;
	}

}

package com.yedam.common;

import java.sql.Connection;
import java.sql.DriverManager;

// db접속 Connection 반환.
public class Dao {
	static String url = "jdbc:oracle:thin:@52.79.226.75:1521/xe"; //54.180.108.113 //
	static String user = "proj";
	static String pass = "proj";
	static Connection conn;

	public static Connection getConnect() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}

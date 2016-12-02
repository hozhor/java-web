package com.web.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static final String jdbcUrl = "jdbc:mysql://localhost:3306/edutest?useUnlcode=true&amp;characterEncoding=utf8";
	private static final String user = "root";
	private static final String passwd = "anwer";
    
	static {
        try { 
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public static Connection getConnection() throws SQLException {
        Connection conn = DriverManager.getConnection(jdbcUrl, user, passwd);
        return conn;
    }
}

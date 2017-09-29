package com.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Getconn {

	public static Connection getconn(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			try {
				return DriverManager.getConnection("jdbc:mysql://localhost/news", "root", "root");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}catch(ClassNotFoundException e){
			System.out.println("加载数据库驱动时抛出异常，内容如下：");
			e.printStackTrace();
		}
		return null;
	}
	
}

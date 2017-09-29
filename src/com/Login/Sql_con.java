package com.Login;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class Sql_con {
	
	
	public static List init(){
		List list = new ArrayList();
		try {
			Connection Conn=Getconn.getconn();
			Statement stmt=Conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from Login ");
			while(rs.next()){
				System.out.println("用户名:"+rs.getString(1)+"		密码:"+rs.getString(2));
				String str = rs.getString(1)+rs.getString(2);
				list.add(str);
			}
			rs.close();
			stmt.close();
			Conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static void main(String[] agrs){
		init();
	}
}

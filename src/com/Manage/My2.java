package com.Manage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class My2 extends ActionSupport {
	private List<message> list=new ArrayList<message>();;
	
	public String execute() throws Exception {
		
		try {
				Connection Conn=Getconn.getconn();
				Statement stmt=Conn.createStatement();
				ResultSet rs=stmt.executeQuery("select * from new ");
				message n1;
				while(rs.next()){
					n1=new message();
					n1.setId(Integer.parseInt(rs.getString(1)));
					n1.setTitle(rs.getString(2));
					n1.setContent(rs.getString(3));
					list.add(n1);
				}
				rs.close();
				stmt.close();
				Conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
		System.out.println(list.size());
		return SUCCESS;
	}

	public List<message> getList() {
		return list;
	}

}

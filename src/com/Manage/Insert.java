package com.Manage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.opensymphony.xwork2.ActionSupport;

public class Insert extends ActionSupport {
	private String title3;
	private String content3;
	
	public String execute() throws Exception {
		try {
			Connection Conn=Getconn.getconn();
			PreparedStatement stmt = Conn.prepareStatement("INSERT INTO new(title,content) VALUES(?,?)");
			stmt.setString(1, getTitle3());
			stmt.setString(2, getContent3());
			
			stmt.executeUpdate();
			stmt.close();
			Conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		return SUCCESS;
	}

	public String getTitle3() {
		return title3;
	}

	public void setTitle3(String title3) {
		this.title3 = title3;
	}

	public String getContent3() {
		return content3;
	}

	public void setContent3(String content3) {
		this.content3 = content3;
	}
	

}

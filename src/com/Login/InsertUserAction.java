package com.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class InsertUserAction extends ActionSupport {
	private String username;
	private String password;
	
	
	public String execute() throws Exception {
		try {
			Connection Conn = Getconn.getconn();
			PreparedStatement stmt = Conn.prepareStatement("INSERT INTO login(username,password) VALUES(?,?)");
			stmt.setString(1,getUsername());
			stmt.setString(2,getPassword());
			
			stmt.executeUpdate();
			stmt.close();
			Conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

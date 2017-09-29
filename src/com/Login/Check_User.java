package com.Login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Check_User extends ActionSupport {
	List<User> list = new ArrayList<User>();
	private String username;
	private String password;
	private String warnning="";
	public String execute() throws Exception {
		try {
			Connection Conn = Getconn.getconn();
			Statement stmt = Conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from login ");
			User user;
			System.out.println(username + "%%%%" + password);
			while (rs.next()) {
				user = new User();
				// System.out.println("用户名:"+rs.getString(1)+"
				// 密码:"+rs.getString(2));
				// String str = rs.getString(1)+rs.getString(2);
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
				list.add(user);
			}
			rs.close();
			stmt.close();
			Conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getUsername().equals(username) && list.get(i).getPassword().equals(password)) {
//				System.out.println(list.get(i).getUsername() + "&&&&" + list.get(i).getPassword());
				warnning="欢迎你，"+username;
				return SUCCESS;
			}
		}
		warnning="用户名或密码错误！！";
		return ERROR;
	}

	public String getWarnning() {
		return warnning;
	}

	public void setWarnning(String warnning) {
		this.warnning = warnning;
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

	public List<User> getList() {
		return list;
	}
}

package com.Manage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class Update extends ActionSupport {
	private int id2;
	private String title2 = "";
	private String content2 = "";

	public String execute() throws Exception {
		if (title2 != "" && content2 != "") {
			try {
				Connection Conn = Getconn.getconn();
				PreparedStatement stmt = Conn
						.prepareStatement("UPDATE new SET title=?,content=? WHERE id=?");
				stmt.setString(1, getTitle2());
				stmt.setString(2, getContent2());
				stmt.setInt(3, getId2());
				int rs = 0;
				rs = stmt.executeUpdate();
				stmt.close();
				Conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public int getId2() {
		return id2;
	}

	public void setId2(int id2) {
		this.id2 = id2;
	}

	public String getTitle2() {
		return title2;
	}

	public void setTitle2(String title2) {
		this.title2 = title2;
	}

	public String getContent2() {
		return content2;
	}

	public void setContent2(String content2) {
		this.content2 = content2;
	}
}

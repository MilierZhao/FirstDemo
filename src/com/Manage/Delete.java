package com.Manage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Delete extends ActionSupport {

	int ID = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));

	public String execute() throws Exception {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("加载数据库驱动时抛出异常，内容如下：");

			e.printStackTrace();
		}
		try {
			Connection Conn = DriverManager.getConnection("jdbc:mysql://localhost/news", "root", "root");
			PreparedStatement stmt = Conn.prepareStatement("DELETE FROM new WHERE id=?");
			stmt.setInt(1, ID);
			int rs = 0;
			rs = stmt.executeUpdate();

			stmt.close();
			Conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

}

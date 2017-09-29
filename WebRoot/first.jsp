<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.Manage.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>新闻管理系统</title>



</head>

<body>
<div style=" background:url(/NewsWeb/images/back007.png) no-repeat ;width:1440px;height:1000px;margin:auto;text-align:center;position: relative;;left:0px;top:0px;">
	<center>
		<h1>新闻后台管理</h1>
		<table width="500">
			<tr>
				<td><font color="red" size=5>ID</font>
				</td>
				<td><font color="red" size=5>标题</font>
				</td>
				<td><font color="red" size=5>操作</font>
				</td>
			</tr>


			<s:iterator value="list">
				<tr>
					<td>${id }</td>
					<td>${title }</td>
					<td><a href="update.jsp?message=${id }">[修改]</a>
					</td>
					<td><a href="delete.action?id=${id }">[删除]</a>
					</td>
				</tr>
			</s:iterator>
				<tr></tr>
				<tr></tr><tr></tr>
				<tr>
				<td></td><td></td><td></td>
				<td>
					<input align="right" type="button" onclick="location.href='Insert.jsp'" value="添加" style="width:80px;height:40px;background:#37BDE0;border:0px;">
					</td>
				</tr>
		</table>
	</center>
			
				
</div>
</body>
</html>








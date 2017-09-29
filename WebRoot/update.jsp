<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.Manage.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>修改</title>

</head>

<body>
	<div style=" background:url(/NewsWeb/images/back007.png) no-repeat ;width:1440px;height:1000px;margin:auto;text-align:center;position: relative;;left:0px;top:0px;">
	<center>
	<h1>修改</h1>
	
	<form action="update2" method="post">
	<table>
	<tr>
	<td>标　题：</td>
	<td><input name="title2" type="text"></td>
	</tr>
	<tr>
	<td>内　容：</td>
	</tr>
	<tr>
	<td></td>
	<td colspan="1"><textarea name="content2" rows="10" cols="30"></textarea> <br><br></td>
	
	</tr>
	</table>
		　　　　　　　　　<input type="submit" value="确认">　　<input type="reset" value="重置">
		<input type="hidden" name="id2" value=<%=Integer.parseInt(request.getParameter("message"))%>>
	</form>
	
	
	</center>
	</div>
</body>
</html>

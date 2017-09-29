<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>插入新闻</title>
  </head>
  
  <body>
  <div style=" background:url(/NewsWeb/images/back007.png) no-repeat ;width:1440px;height:1000px;margin:auto;text-align:center;position: relative;;left:0px;top:0px;">
    <center>
    <form action="insert" method="post">
	<table>
	<tr>
	<td>标　题：</td>
	<td><input name="title3" type="text"></td>
	</tr>
	<tr>
	<td>内　容：</td>
	</tr>
	<tr>
	<td></td>
	<td colspan="1"><textarea name="content3" rows="10" cols="40"></textarea> <br><br></td>
	
	</tr>
	</table>
		　　　　　　　　　<input type="submit" value="确认">　　<input type="reset" value="重置">
	</form>
	</center>
	</div>
  </body>
</html>

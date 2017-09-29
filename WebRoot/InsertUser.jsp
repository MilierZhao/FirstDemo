<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>后台注册系统</title>
<style type="text/css">

#logintable{
 width:400px;
 
	
}
#logintable td{
	font-family:"Microsoft YaHei","\5fae\8f6f\96c5\9ed1";
	color:#555;
	height:40px;
}
*{
	font-family:"Microsoft YaHei","\5fae\8f6f\96c5\9ed1";
}

</style>
</head>
<body>
<div style="background:url(/NewsWeb/images/login_back.jpg) no-repeat center top;width:1440px;height:1000px;margin:auto;text-align:center;position: relative;;left:0px;top:0px;">
	<center>
	<div style="position: absolute;left: 500px;top: 320px;width:400px;height:100px;color:white;font-size:25px;">
		新闻注册页面
	</div>
	<div style="position: absolute;left: 450px;bottom: 280px;width:500px;height:300px;">
		<form action="InsertUser" method="post">
			用户名：<input name="username" type="text"><br><br>
			 密　码：<input name="password" type="password"><br><br><br>
			 　　　<input type="submit" value="确认">　　<input type="reset" value="重置">
		</form>
		</div>
	</center>
	</div>
</body>
</html>
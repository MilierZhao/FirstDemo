<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登陆系统</title>
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


<script type="text/javascript">
	function checkN(){
		if(document.getElementById("username").value.length<5||document.getElementById("username").value.length>8){
			document.getElementById("tips_name").innerHTML="<em style='color:#FF0000'>由5-8位字符组成！！</em>";
			document.getElementById("username").focus();
			return false;
		}else{
			document.getElementById("tips_name").innerHTML="OK！";
		}
	}
	
	function checkP(){
		var reg=/[^A-Za-z0-9]+/;
		if(document.getElementById("password").value.length<5||document.getElementById("password").value.length>10
				||reg.test(document.getElementById("password").value)){
			document.getElementById("tips_password").innerHTML="<em style='color:#FF0000'>包含字母、数字5-10位组成！</em>";
			document.getElementById("password").focus();
			return false;
		}
		else{
			document.getElementById("tips_password").innerHTML="OK！";
		}
	}

</script>
</head>
<body>
<div style="background:url(/NewsWeb/images/login_back.jpg) no-repeat center top;width:1440px;height:1000px;margin:auto;text-align:center;position: relative;;left:0px;top:0px;">
	<h1 style="color:#FF0000"><s:property value="warnning"/></h1>
	<div style="position: absolute;left: 500px;top: 320px;width:400px;height:100px;color:white;font-size:25px;">
		飞飞侠知天下
	</div>
		<div style="position: absolute;left: 500px;bottom: 120px;width:400px;height:100px;color:white;">
		© 1997-2017  成都飞飞侠公司版权所有
		</div>
	<div style="position: absolute;left: 500px;bottom: 280px;width:750px;height:300px;">
		<form action="Check" method="post">
			<table id="logintable">
				<tr>
					<td align="right" width="120px"> 用户名:</td>
					<td align="left"> <input type="text" name="username" id="username" onBlur="return checkN()"/></td>
					<td width="450px"><span id="tips_name" >*由5-8位字符组成</span></td>
				</tr>
				<tr>
					<td align="right"> 密码:</td>
					<td align="left"> <input type="password" name="password" id="password" onBlur="return checkP()"/></td>
					<td ><span id="tips_password" >*由字母、数字5-10位组成</span></td>
				</tr>
			</table>
			<br><br>
			<div >
				<input type="submit" value="登      陆 " style="font-size:25px;font-weight:bold;color:white;cursor:pointer;background:#37BDE0;border:0px;width:180px;height:50px;color:"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="InsertUser.jsp">注册</a>
			</div>
		</form>
	</div>


</div>

</body>
</html>
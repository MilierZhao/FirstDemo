<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Manage.*"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>飞飞侠知天下</title>
<style type="text/css">
#title{
	height:40px;
	width:100%;
	font-family:黑体;
	font-size:20px;
	padding-bottom:0px;
}
#wire{
	width:100%;
	height:3px;
	margin:0px auto;
	padding:0px;
	background-color:red;
	overflow:hidden;
}

#wire2{
	width:100%;
	height:3px;
	margin:0px auto;
	padding:0px;
	background-color:gray;
	overflow:hidden;
}
#title2{
	font-family:Microsoft Yahei;
	font-size:20px;
}
</style>
</head>
<body>
	<div id=title>
	飞飞侠带你&nbsp;&nbsp;&nbsp;看世界精彩
	</div>
	<div id=wire></div>
	<div  style=" height:30px;width:100%; text-align:center">
	首页&nbsp;&nbsp;/&nbsp;&nbsp;排行&nbsp;&nbsp;/&nbsp;&nbsp;图片&nbsp;&nbsp;/&nbsp;&nbsp;国内&nbsp;&nbsp;/&nbsp;&nbsp;国际&nbsp;&nbsp;/社会&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;媒体
	&nbsp;&nbsp;/&nbsp;&nbsp;数读&nbsp;&nbsp;/&nbsp;&nbsp;军事&nbsp;&nbsp;/&nbsp;&nbsp;航空&nbsp;&nbsp;/&nbsp;&nbsp;无人机&nbsp;&nbsp;/&nbsp;&nbsp;新闻&nbsp;&nbsp;/&nbsp;&nbsp;
	学院&nbsp;&nbsp;/&nbsp;&nbsp;政务&nbsp;&nbsp;/&nbsp;&nbsp;公益&nbsp;&nbsp;/&nbsp;&nbsp;
	</div>
	<div id=wire></div>
	<div style="margin:0 auto;width:100%; height:2000px;"> 
	<div style="margin:5px;height:2000px;width:300px;float:left;"> 
		<div id=title2>新闻有态度</div>
		<br><br>
		<div>
		<img alt="" src="images/l1.jpg" style="float:center">
		<ul>
		<li>技术进步会抢你的饭碗吗？</li>
		<li>特朗普上任百天，美国民众打几分？</li>
		<li>IT行业的前景如何？</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		
		<br><br><br><br>
		<div>
		<img alt="" src="images/l2.jpg" style="float:center">
		<ul>
		<li>传销七天我以为我不会被洗脑</li>
		<li>她革了临床医学的命</li>
		<li>卖地潜逃没人敢问</li>
		<li>成一座你来了就不想走的城市</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		
		<br><br><br><br>
		<div>
		<img alt="" src="images/l3.jpg" style="float:center">
		<ul>
		<li>方言地图：中国哪个地方的方言最难懂</li>
		<li>网络热词你知道哪些</li>
		<li>当今最受欢迎的App</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		
		<br><br><br><br>
		<div>
		<img alt="" src="images/l4.jpg" style="float:center">
		<ul>
		<li>现在有钱人都爱花几千买脏东西？</li>
		<li>每个常混贴吧的老司机都爱用它</li>
		<li>周杰伦的儿化音为什么让人觉得怪</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		
		<br><br><br><br>
		<div>
		<img alt="" src="images/l5.jpg" style="float:center">
		<ul>
		<li>他拍了部印度禁片，却被当做国家的良心</li>
		<li>中年危机？你的问题是感情太多但</li>
		<li>坐飞机都能坐出中产感，这只是想</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		
		<br><br><br><br>
		<div>
		<img alt="" src="images/l6.jpg" style="float:center">
		<ul>
		<li>每个男孩小时候都是四驱车老司机</li>
		<li>90年代的美女教会我们世界真奇妙</li>
		<li>你敢说出你的网恋故事吗？</li>
		</ul>
		</div>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
	</div>
	<div style="margin:5px;height:2000px; width:750px;float:left;">
		<div id=title2>精彩看点</div><br><br>
		<table style="align:center;height:30px;wight:750px;border:0px;font-size:20px">
		<s:iterator value="list">
		<tr>
		<td>${title}</td>
		<td>${content}</td>
		</tr>
		</s:iterator>
		</table>
		
		<br><br><br><br>
		<table style="align:center;height:30px;wight:750px;border:0px;font-size:20px">
		<caption style="font-size:30px;font-color:white;font-weight:bold;">国家最高科技奖得主吴文俊病逝 享年98岁</caption>
		<tr>
		<td>女司机被撞用身体"刹车"反被夹</td>
		<td>|丈夫家暴道歉 妻子:辣椒酱放老鼠药</td>
		</tr>
		<tr>
		<td>昆明司机听信传言扎堆缴罚款</td>
		<td>|&nbsp;&nbsp;运钞公司职员偷1560万 2年后才被发现</td>
		</tr>
		<tr>
		<td>4岁舅舅带3岁外甥幼儿园"越狱"</td>
		<td>|&nbsp;&nbsp;10岁女孩小区池塘里玩耍尖叫后猝死</td>
		</tr>
		</table>
		
		<br><br><br><br>
		<table style="align:center;height:30px;wight:750px;border:0px;font-size:20px">
		<caption style="font-size:30px;font-color:white;font-weight:bold;">大飞机C919首飞全记录:首次行走仅十几米</caption>
		<tr>
		<td>2男童命丧后备箱 监控拍下这一幕</td>
		<td>|江西丰城一在建电塔倒塌致3死2伤</td>
		</tr>
		<tr>
		<td>女子醉酒趴饭店桌熟睡 遭陌生男强奸</td>
		<td>|&nbsp;&nbsp;丈夫拍朋友亲热 妻子疑其出轨</td>
		</tr>
		<tr>
		<td>4岁舅舅带3岁外甥幼儿园"越狱"</td>
		<td>|&nbsp;&nbsp;10岁女孩小区池塘里玩耍尖叫后猝死</td>
		</tr>
		</table><br><br><br>
		<hr style=" height:1px;border:none;border-top:1px solid gray;" />
		<div id=title2>独家报道</div>
		<img alt="" src="images/c1.jpg"><br><br>
		<hr style=" height:2px;border:none;border-top:2px solid red;" />
		<table height="800px;">
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		<tr>
		<td><img alt="" src="images/c2.jpg"></td>
		<td>法国总统大选第二轮投票：奥朗德耐心等待并投票</td>
		</tr>
		</table>
	</div>
	<div style="margin:5px;height:2000px;width:250px;float:left;"><br><br>
	<br><br>
	<a href="login.jsp"><input type="button" style="height:60px;width:150px;background:#37BDE0;border:0;" value="Login" ></input></a>
	 </div>
	</div>
</body>
</html>
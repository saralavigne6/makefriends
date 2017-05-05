<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyPassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	font-family:"微软雅黑";
	}
#makefriends1 {
	color: #F91B1F;
	font-size: 40px;
	font-weight: bold;
	}
#makefriends2 {
	color: #B0999A;
	font-size: 40px;
	font-weight: bold;
	}
#head {
	margin-top: 30px;
	margin-left: 140px;
	float: left;
	}
#head #mulu ul{
	list-style-type: none;
	float: left;
	margin-left:360px;
	margin-top:-30px;
	}
#head #mulu ul li{
	float: left;	
	
	}
#head #mulu ul li a {
	text-decoration: none;
	color: #110F0F;
	padding-left:10px;
	padding-right:10px;
	float:left;
	}
#head #mulu ul li a:hover{
	color: #EF6A6C;
	text-decoration: underline;
	background-color: #F3DAB7;
	float: left;
	
 }
   .form2 {
	margin-top: 10px;
	padding-left: 510px;
	padding-top: 200px;
	}
.content {
height:200px;
 weight:400px;
 float:left;
 margin-left:496px;
 margin-top:220px;
}
.body {
 background-color:black;
 height:665px;
 width:1330px;
 float:left;
 background-image: url(7.jpg);
 }
 </style>
  </head>
  
  <body>
<div id="head">
  <span id="makefriends1">MAKE</span> <span id="makefriends2">  FRIENDS</span>
 
  <div id="mulu">
  <ul>
    <li><a href="register.jsp">会员注册</a></li>
    <li><a href="login.jsp">会员登录</a></li>
    <li><a href="upload.jsp">上传照片</a></li>
    <li><a href="choiceLookType.jsp">浏览会员</a></li>
    <li><a href="modifyPassword.jsp">修改密码</a></li>
    <li><a href="inputModifyMess.jsp">修改信息</a></li>
    <li><a href="exit">退出登录</a></li>
    <li><a href="main.jsp">返回主页</a></li>
  </ul>
  </div>
</div>

<div class="body">
<div class="content">
   <BR>
   <FORM action="helpModifyPassword" Method="post"> 
   <table>
     <tr>
       <th style="color:#edaf1b;font-size:20px;">- · 输 入 旧 密 码 和 新 密 码 · -</th>
     </tr>
     
     <tr>
       <td><Input type=password name="oldPassword" placeholder="旧密码" style="width: 340px;height:40px; font-size:20px;font-family:微软雅黑;"></td>
     </tr>
     
     <tr>
       <td><Input type=password name="newPassword" placeholder="新密码" style="width: 340px;height:40px ;font-size:20px;font-family:微软雅黑;"></td>
     </tr>
     
     <tr>
       <td><Input type=submit name="g" value="提交" style="font-family:微软雅黑;color: white;font-size:20px;width: 340px;height:40px;background-color:#0997c0; border: 2px solid #0997c0;"></td>
     </tr>
   </table>
   
   
 
</Form> 
</div>
</div>
  </body>
</html>

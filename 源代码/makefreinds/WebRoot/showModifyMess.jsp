<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="modify" type="mybean.data.ModifyMessage" scope="request"/> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showModifyMess.jsp' starting page</title>
    
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
 margin-left:335px;
 margin-top:200px;
 text-align:center;
 }
  .body {
 background-color:black;
 height:667px;
 width:1330px;
 float:left;
 background-image: url(8.jpg);
 }
 td {
 text-align:center;
 font-size:18px;
 }
 th {
 text-align:center;
 background:orange;
 }
 textarea {
 font-size:18px;
 font-family:"微软雅黑";
 background:none;
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
    <jsp:getProperty name="modify" property="backNews"/>, 
      您修改信息如下： <br>
 <table border=1 cellspacing=0  style="border-color:#898886;collapse:collapse">  
 <tr> 
     <th style="width: 162px; ">新电话</th> 
     <th style="width: 238px; ">新 email</th> 
     <th style="width: 240px; ">新简历和交友标准</th> 
 </tr> 
 <tr>  
     <td><jsp:getProperty name="modify" property="newPhone"/></td> 
     <td><jsp:getProperty name="modify" property="newEmail"/></td> 
     <td><textarea style="width: 245px; height: 81px"> 
         <jsp:getProperty name="modify" property="newMessage"/> 
         </textarea> 
     </td> 
 </tr>
</table>
<br><br><br><br>
<span style="color: orange;font-size: 40px;font-weight: bold;">MAKE</span> 
<span style="color: white;font-size: 40px;font-weight: ;">  FRIENDS</span>
</div>
</div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 
<%@ page import="mybean.data.UploadFile"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="upFile" type="mybean.data.UploadFile" scope="request"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showUploadMess.jsp' starting page</title>
    
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
	padding-top:4px;
	padding-bottom:4px;
	float:left;
	}
#head #mulu ul li a:hover{
	color: #EF6A6C;
	text-decoration: underline;
	background-color: #F3DAB7;
	float: left;
}
.content {
 
height:300px;
 width:463px;
 float:left;
 margin-left:430px;
 margin-top:30px;
 background-image: url(image1.png);
 padding-left:30px;
 padding-top:170px;
 text-align:center;
}
.body {
background-color:black;
 height:630px;
 width:1330px;
 float:left;
 background-image: url(background.jpg);
}
span {
color:white;
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
 <span> <jsp:getProperty name="upFile" property="backNews"/></span>
  <br>
   <span>上传的文件名字：<jsp:getProperty name="upFile" property="fileName"/></span> 
   <BR><span>保存后的文件名字：<jsp:getProperty name="upFile" property="savedFileName"/> </span>
   <BR> 
     <span>图像效果</span><br>
    <img src=image/<jsp:getProperty name="upFile" property="savedFileName"/> 
     width=130 height=130> 
     </img>  
</div>



</div>
  </body>
</html>

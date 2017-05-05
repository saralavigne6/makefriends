<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputModifyMess.jsp' starting page</title>
    
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
 height:300px;
 weight:400px;
 float:left;
 margin-left:483px;
 margin-top:160px;
 }
 .body {
 background-color:black;
 height:667px;
 width:1330px;
 float:left;
 background-image: url(8.jpg);
 }
 input {
 font-family:"微软雅黑";
 font-size:18px;
 }
 textarea {
  font-family:"微软雅黑";
 font-size:18px;
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
<form action="helpModifyMess" method="post" name="form" style="height: 477px; ">
 <table>
   <tr>
     <td height="50px" style="font-size:17px">新联系电话：</td>
     <td height="50px"><input type="text" name="newPhone" style="width: 251px; height: 41px"></td>
   </tr>
   
   <tr>
     <td height="50px" style="font-size:17px">新的电子邮件：</td>
     <td height="50px"><input type="text" name="newEmail" style="width: 250px; height: 41px"></td>
   </tr>
 </table>
 <table>
   <tr>
      <td style="font-size:17px">新简历和交友标准：</td>
   </tr>
   
   <tr>
     <td height="100px">
     <textarea name="newMessage" rows="6" cols="30" style="width: 372px; "></textarea>
     </td>
   </tr>
   
   <tr>
     <td height="50px">
   <input type="submit" name="g" value="提 交 修 改" style="width: 371px; height: 40px;
   color: white;background-color:#0997c0; border: 2px solid #0997c0;"></td>
   </tr>
 
    <tr>
    <td height="50px">
    <input type="reset" value="重      置" style="width: 371px; height: 40px;
    color: white;background-color:#0997c0; border: 2px solid #0997c0;"></td>
    </tr>
 
 </table>
</form>
</div>
</div>
  </body>
</html>

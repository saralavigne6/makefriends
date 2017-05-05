<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
 .form1 {
	margin-top: 10px;
	padding-left: 205px;
	padding-top: 70px;
	width: 1126px;
	background-color: #A28B8B;
	float: left;
	height: 500px;
	background-image: url(1.jpg);
	}
input {
	border-radius: 7px;
	background-color: #ECDCAD;
	border-color: #BBB0B0;
	height: 23px;
	border-style: solid;
	background:rgba(199, 183, 172, 0.6);
	}
textarea {
	border-radius: 7px;
	
	border-color:  #BBB0B0;
	border-style: solid;	
	background:rgba(199, 183, 172, 0.6); 
	}
p {
	color: #FFFFFF;	
	font-family:"黑体";
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


 <div class="form1">
    <form action="register" name="form1" method="post">
     <p>输入信息，会员名字必须由字母和数字组成</p>
     <table width="500px" height="400px">
      <tr>
        <td style="width: 100px; color:white;" >会员名字：</td><td style="width: 400px; "><input type="text" name="logname" style="font-family:微软雅黑;color:white;width: 250px; height:30px"></td>
      </tr>
      <tr>
        <td style="width: 100px; color:white;">设置密码：</td><td style="width: 400px; "><input type="password" name="password" style="font-family:微软雅黑;color:white;width: 250px; height:30px"></td>
      </tr>
      <tr>
        <td style="width: 100px; color:white;">电子邮箱：</td><td style="width: 400px; "><input type="text" name="email" style="font-family:微软雅黑;color:white;width: 250px; height:30px"></td>
      </tr>
      <tr>
        <td style="width: 100px; color:white;">联系电话：</td><td style="width: 400px; "><input type="text" name="phone" style="font-family:微软雅黑;color:white;width: 250px; height:30px"></td>
      </tr>
      <tr>
        <td colspan="2" style="color:white;">输入你的简历和交友标准：</td>
      </tr>
      <tr>
        <td colspan="2"><textarea name="message" rows="6" cols="30" style="font-family:微软雅黑;color:white;width: 350px; "></textarea></td>
      </tr>
      <tr>
        <td colspan="2" ><input type="submit" name="g" value="提 交" style="color:white;font-size:20px;font-family:微软雅黑;width: 354px; height:35px; background-color:#056a87;border-color: #056a87;" ></td>
      </tr>
     </table>
    </form>
   </div>
    
   
  </body>
</html>

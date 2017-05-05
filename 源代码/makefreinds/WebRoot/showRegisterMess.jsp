<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="register" type="mybean.data.register" scope="request"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showRegisterMess.jsp' starting page</title>
    
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
  .content {
	margin-top: 15px;
	padding-left: 205px;
	padding-top: 70px;
	width: 1126px;
	background-color: #A28B8B;
	float: left;
	height: 500px;
	background-image: url(1.jpg);
	}
td {
text-align:center;
font-size:16px;
background:#e0cd95;
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
  <div class="content">
   <br><span style="color:white;"><jsp:getProperty name="register" property="backNews"/></span>
    <table>
      <tr style="height: 53px; ">
        <td style="width: 13px; color:white; background:#d19f39;">注册的会员名：</td>
        <td style="width: 219px; color:#66645c;background:#e0cd95;"><jsp:getProperty name="register" property="logname"/></td>
      </tr>
      
      <tr style="height: 53px; ">
        <td style="width: 135px; color:white; background:#d19f39;">注册的电子邮件：</td>
        <td style="width: 257px; color:#66645c;background:#e0cd95;"><jsp:getProperty name="register" property="email"/></td>
      </tr>
      
      <tr style="height: 53px; ">
        <td style="width: 135px; color:white; background:#d19f39;">注册的联系电话：</td>
        <td style="width: 257px; color:#66645c;background:#e0cd95;"><jsp:getProperty name="register" property="phone"/></td>
      </tr>
    </table>
    
    <table style="height: 100px; ">
       <tr style="height: 53px; ">
          <td style="width: 180px; color:white; background:#d19f39;">您的简历和交友标准：</td>
       </tr>
    
       <tr>
          <td><textarea name="message" rows="6" cols="30" style="width: 409px; font-family:微软雅黑;background:#e0cd95;color:#66645c;font-size:16px;">
          <jsp:getProperty name="register" property="message"/>
          </textarea></td>
       </tr>
    </table>
  
  </div>

  </body>
</html>

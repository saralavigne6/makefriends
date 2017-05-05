<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="show" type="mybean.data.ShowByPage" scope="session"/> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showAllMember.jsp' starting page</title>
    
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
 height:600px;
 width:900px;
 float:left;
 margin-left:230px;
 margin-top:30px;
 background:rgba(50, 42, 43, 0.4);
 align:center;
 }
 th {
  text-align:center;
  color:white;
  font-size:17px;
  
  background:rgba(244, 150, 45, 0.8);
  height:30px;
  border-color:#E7DDDD;
 }
 .body .content .table td {
 text-align:center;
  color:white;
  weight:5px;
  font-size:17px;
  background:rgba(73, 72, 62, 0.5);
  border-color:#E7DDDD;
 }
 td2 {
background:rgba(50, 42, 43, 0.4);
 }
 .content2 {
 margin-left:239px;
 margin-top:30px;
 height:100px;
 width:354px;
 text-align:center;
 color:white;
 }
 
 .body {
 background-color:black;
 height:650px;
 width:1330px;
 float:left;
 background-image: url(51.jpg);
 }
 .table {
 margin-left:50px;
 }
 .input {
   background-color: #485be8;
	border-style: solid;
	border-color: #485be8;
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

<div class="table">
  <br>
  <table border="0" width="800px" style="height: 71px; ">
    <tr>
      <th style="width: 75px;">会员名</th>
      <th style="width: 75px; ">电话</th>
      <th style="width: 190px; ">email</th>
      <th>简历和交友标准</th>
      <th>用户标准</th>
    </tr>
    <jsp:getProperty name="show" property="presentPageResult"/>
    
  </table>
  </div>
  
  
  <div class="content2">
   <br>每页最多显示<jsp:getProperty name="show" property="pageSize"/>条信息
   <br>当前显示第<jsp:getProperty name="show" property="showPage"/>
   页，共有<jsp:getProperty name="show" property="pageAllCount"/>
   页
   <br>单击“上一页”或者“下一页”按钮查看信息
  <table>
      <tr>
        <td>
          <form action="helpShowMember" method="post">
          <input type="hidden" name="showPage" value="<%=show.getShowPage()-1%>">
           &nbsp; &nbsp;<input type="submit" class="input" name="g" value="上一页" style="font-family:微软雅黑;">
          
          </form>
        </td>
        
        <td>
          <form action="helpShowMember" method="post">
          <input type="hidden" name="showPage" value="<%=show.getShowPage()+1 %>">
          <input type="submit" name="g" class="input" value="下一页" style="font-family:微软雅黑;">
          </form>
        </td>
        
        <td>
        <form action="helpShowMember" method="post">
        <span style="color:white;">输入页码：</span><input type="text" name="showPage" size=5>
        <input type="submit" name="g" class="input" value="提交" style="font-family:微软雅黑;">
        
        </form>
        
        </td>
        
      </tr>
   </table>
   <br>
   <span style="color: #da9613;font-size: 30px;font-weight: thin;">--MAKE</span> 
    <span style="color: white;font-size: 30px;font-weight:thin ;">  FRIENDS--</span>
 

</div>

</div>

</div>
  </body>
</html>

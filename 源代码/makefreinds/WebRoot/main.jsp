<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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


#slider {
	
	float: left;
    width:1330px;
	height:800px;
	margin-top:10px;
	background-color:#C8393B;
}


.controls li {
	top: 50%;
	margin-top: -30px
}

.controls li:nth-child(1) {
	left: 0;
}

.controls li:nth-child(2) {
	right: 0;
}

.responsive {
	width: 100%;
	height: auto;
	
}

.clearfix:after {
	content: "";
	display: table;
	clear: both;
}
.slides clearfix {
	float: left;
	
	}
ul {
	list-style-type: none;
	}
#slider #image {
	margin-left: -43px;
	margin-top: -17px;
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

<div id="slider">

   <div id="image">
 
	<ul class="slides clearfix">
		<li><img class="responsive" src="images/image1.jpg" alt=""></li>
		<li><img class="responsive" src="images/image2.jpg" alt=""></li>
		<li><img class="responsive" src="images/image3.jpg" alt=""></li>
	</ul>
    </div>
    
   
    
	<ul class="controls">
		<li><img src="images/prev.png" alt="previous"></li>
		<li><img src="images/next.png" alt="next"></li>
	</ul>

   

</div>

<script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="js/easySlider.js"></script>
<script type="text/javascript">
	$(function() {
		$("#slider").easySlider( {
			slideSpeed: 1000,
			slidesClass: ".slides",
			controlsClass: ".controls",
								
		});
	});
</script>


</body>
</html>
